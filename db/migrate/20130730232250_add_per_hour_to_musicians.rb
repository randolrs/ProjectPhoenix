class AddPerHourToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :per_hour, :float
  end
end
