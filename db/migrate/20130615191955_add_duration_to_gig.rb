class AddDurationToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :event_duration, :integer
  end
end
