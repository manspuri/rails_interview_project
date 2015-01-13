class AddLocationAssociationToListingsTable < ActiveRecord::Migration
  def change
    add_reference :listings, :location, index: true
  end
end
