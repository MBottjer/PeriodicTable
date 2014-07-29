class CreateTiles < ActiveRecord::Migration
  def change
    create_table :tiles do |t|
      t.string :element
      t.text :description
      t.boolean :is_html5

      t.timestamps
    end
  end
end
