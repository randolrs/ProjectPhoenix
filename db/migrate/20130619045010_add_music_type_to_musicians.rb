class AddMusictypeToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :music_type, :string
  end
end
