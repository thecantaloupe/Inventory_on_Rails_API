# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_06_114013) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventory_item_selections", force: :cascade do |t|
    t.string "option", null: false
    t.string "pf_id", null: false
    t.bigint "inventory_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inventory_item_id"], name: "index_inventory_item_selections_on_inventory_item_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "name", null: false
    t.string "sku"
    t.string "description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "inventory_levels", force: :cascade do |t|
    t.integer "count"
    t.bigint "warehouse_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "inventory_items_id", null: false
    t.index ["inventory_items_id"], name: "index_inventory_levels_on_inventory_items_id"
    t.index ["warehouse_id"], name: "index_inventory_levels_on_warehouse_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "address1", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.string "description", null: false
    t.decimal "lat"
    t.decimal "lng"
    t.string "warehouse_manager"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "inventory_item_selections", "inventory_items"
  add_foreign_key "inventory_levels", "inventory_items", column: "inventory_items_id"
  add_foreign_key "inventory_levels", "warehouses"
end
