class AddImageRemoteUrlToGigs < ActiveRecord::Migration
  def change
    add_column :gigs, :image_remote_url, :string
  end
end
