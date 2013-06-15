class AddEventToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :event_type, :string
  end
end
