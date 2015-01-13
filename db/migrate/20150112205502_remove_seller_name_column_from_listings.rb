class RemoveSellerNameColumnFromListings < ActiveRecord::Migration
  def change
    remove_column :listings, :seller_name
  end
end
