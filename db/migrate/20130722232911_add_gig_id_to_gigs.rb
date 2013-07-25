class AddGigIdToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :gig_id, :integer
    add_index :gigs, :gig_id
  end
end
