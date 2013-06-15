class AddTimeToGig < ActiveRecord::Migration
  def change
    add_column :gigs, :event_date, :datetime
    add_column :gigs, :event_zip, :integer
    add_column :gigs, :event_price, :integer
  end
end
