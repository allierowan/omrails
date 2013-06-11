class AddImageRemoteUrlToGupbos < ActiveRecord::Migration
  def change
    add_column :gupbos, :image_remote_url, :string
  end
end
