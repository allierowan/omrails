class CreateGupbos < ActiveRecord::Migration
  def change
    create_table :gupbos do |t|
      t.string :comment
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
