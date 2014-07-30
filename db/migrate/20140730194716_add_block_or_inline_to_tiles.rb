class AddBlockOrInlineToTiles < ActiveRecord::Migration
  def change
    add_column :tiles, :blockOrInline, :string
  end
end
