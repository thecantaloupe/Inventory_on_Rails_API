class CreateInventoryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_items do |t|
      t.string :name, null: false
      t.string :sku
      t.string :description, null: false

      t.timestamps
    end
  end
end
