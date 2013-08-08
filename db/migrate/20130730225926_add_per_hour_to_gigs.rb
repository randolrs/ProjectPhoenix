class AddPerHourToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :per_hour, :float
  end
end
