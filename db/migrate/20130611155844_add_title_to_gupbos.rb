class AddTitleToGupbos < ActiveRecord::Migration
  def change
    add_column :gupbos, :title, :string
  end
end
