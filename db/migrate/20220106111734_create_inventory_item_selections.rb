class CreateInventoryItemSelections < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_item_selections do |t|
      t.string :option, null: false
      t.string :pf_id, null: false
      t.references :inventory_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
