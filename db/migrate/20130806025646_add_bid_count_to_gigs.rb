class AddBidCountToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :bidcount, :integer
  end
end
