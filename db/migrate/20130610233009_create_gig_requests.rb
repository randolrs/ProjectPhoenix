class CreateGigRequests < ActiveRecord::Migration
  def change
    create_table :gig_requests do |t|
      t.string :description

      t.timestamps
    end
  end
end
