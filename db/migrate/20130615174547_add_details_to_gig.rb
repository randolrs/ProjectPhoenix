class AddDetailsToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :music_type, :string
  end
end
