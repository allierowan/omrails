class RemoveRatingFromPins < ActiveRecord::Migration
  def up
    remove_column :pins, :rating
  end

  def down
    add_column :pins, :rating, :integer
  end
end
