class Seller < ActiveRecord::Base
	has_many :locations
	has_many :listings, through: :locations
end
