class AddCategoryIdToTiles < ActiveRecord::Migration
  def change
    add_column :tiles, :category_id, :integer
  end
end
