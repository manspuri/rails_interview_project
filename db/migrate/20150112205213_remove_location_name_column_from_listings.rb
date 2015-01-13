class RemoveLocationNameColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :location_name
  end
end
