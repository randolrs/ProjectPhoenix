class AddZipToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :zip, :string
  end
end
