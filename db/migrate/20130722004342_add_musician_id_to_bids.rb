class AddMusicianIdToBids < ActiveRecord::Migration
  def change
    add_column :bids, :musician_id, :integer
    add_index :bids, :musician_id
  end
end
