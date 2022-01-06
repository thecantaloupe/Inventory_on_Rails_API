class CreateInventoryLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_levels do |t|
      t.integer :count
      t.references :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
