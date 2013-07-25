class AddGigIdToBids < ActiveRecord::Migration
  def change
  	add_column :bids, :gig_id, :integer
    add_index :bids, :gig_id
  end
end
