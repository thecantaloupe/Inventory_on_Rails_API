class CreateWarehouses < ActiveRecord::Migration[6.1]
  def change
    create_table :warehouses do |t|
      t.string :address1, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :description, null: false
      t.decimal :lat
      t.decimal :lng
      t.string :warehouse_manager
      t.boolean :active

      t.timestamps
    end
  end
end
