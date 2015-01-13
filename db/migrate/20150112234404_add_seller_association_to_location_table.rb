class AddSellerAssociationToLocationTable < ActiveRecord::Migration
  def change
    add_reference :locations, :seller, index: true
  end
end
