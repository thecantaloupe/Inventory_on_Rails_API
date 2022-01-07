class AddForeignKeyToInventoryLevel < ActiveRecord::Migration[6.1]
  def change
    add_reference :inventory_levels, :inventory_item, null: false, foreign_key: true
  end
end
