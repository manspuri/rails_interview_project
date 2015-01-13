class RemoveAddressColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :address
  end
end
