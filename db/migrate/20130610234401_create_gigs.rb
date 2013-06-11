class CreateGigs < ActiveRecord::Migration
  def change
    create_table :gigs do |t|
      t.string :desription

      t.timestamps
    end
  end
end
