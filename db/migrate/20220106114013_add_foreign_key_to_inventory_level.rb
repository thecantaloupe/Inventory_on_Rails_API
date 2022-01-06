class AddForeignKeyToInventoryLevel < ActiveRecord::Migration[6.1]
  def change
    add_reference :inventory_levels, :inventory_items, null: false, foreign_key: true
  end
end
