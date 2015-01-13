
puts "Creating sellers"
10.times {Seller.create(
  {
    name: Faker::Company.name
  }
)}

puts "Creating locations"
10.times {Location.create(
  {
    seller: Seller.all.sample,
    name: Faker::Address.street_name + " parking",
    address: Faker::Address.street_address,
    city: "Chicago"
  }
)}

puts "Creating listings"
10.times { Listing.create(
  {
    location: Location.all.sample,
    available: 2+rand(8),
    active: true,
    min_parking_hours: 1 + rand(3),
    price_per_hour: 1 + rand(24)
  }
)}

# update last record to create limited resource location
l = Listing.last
l.location = Location.create(
  {
    seller: Seller.all.sample,
    name: Faker::Address.street_name + " parking",
    address: Faker::Address.street_address,
    city: "Chicago"
  })
l.min_parking_hours = 3
l.available = 1
l.save

puts "Creating bookings"
Booking.create([
  {
    customer_name: Faker::Name.name,
    plate_number: Faker::Number.number(7),
    time_start: DateTime.now.utc.beginning_of_day + 18.hours,
    time_end: DateTime.now.utc.beginning_of_day + 22.hours,
    listing_id: l.id
  }
])
