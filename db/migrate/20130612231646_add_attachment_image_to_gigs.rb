class AddAttachmentImageToGigs < ActiveRecord::Migration
  def self.up
    change_table :gigs do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :gigs, :image
  end
end
