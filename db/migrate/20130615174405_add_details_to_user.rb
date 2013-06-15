class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :music_type, :string
  end
end
