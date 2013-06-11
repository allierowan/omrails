class AddAttachmentImageToGupbos < ActiveRecord::Migration
  def self.up
    change_table :gupbos do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :gupbos, :image
  end
end
