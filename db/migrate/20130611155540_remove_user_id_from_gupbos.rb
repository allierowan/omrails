class RemoveUserIdFromGupbos < ActiveRecord::Migration
  def up
    remove_column :gupbos, :User_ID
  end

  def down
    add_column :gupbos, :User_ID, :integer
  end
end
