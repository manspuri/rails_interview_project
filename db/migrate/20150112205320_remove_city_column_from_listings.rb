class RemoveCityColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :city
  end
end
