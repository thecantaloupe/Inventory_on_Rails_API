# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Warehouse.create([
    { address1: "392 1st Street", city: "Los Altos", state: "CA", description: "PowerFlex Main Office", warehouse_manager: "Eleazar" },
    { address1: "990 N San Antonio Rd", city: "Los Altos", state: "CA", description: "PowerFlex Main Warehouse", warehouse_manager: "Eleazar" },
    { address1: "Redacted", city: "San Marino", state: "CA", description: "PowerFlex LA Office", warehouse_manager: "Tim Lin" }
])

params = { inventory_item:
    [{
        name: "Webasto DX",
        sku: "PF-DX",
        description: "Level 2 charger, Zigbee enabled",
        inventory_levels_attributes: [{
            count: 10,
            warehouse_id: 1
        }],
        inventory_item_selection_attributes: {
            option: "15ft 32A",
            pf_id: "32A-15ft"
        }
    }],
    inventory_item2:
    [{
        name: "ClipperCreek",
        sku: "PF-HCS",
        description: "Level 2 charger, Zigbee enabled",
        inventory_levels_attributes: [{
            count: 32,
            warehouse_id: 1
        }],
        inventory_item_selection_attributes: {
            option: "64A",
            pf_id: "HCS-80"
        }
    }],
    inventory_item3:
    [{
        name: "Tesla",
        sku: "PF-TS",
        description: "Level 2 charger, Zigbee enabled",
        inventory_levels_attributes: [{
            count: 20,
            warehouse_id: 3
        }],
        inventory_item_selection_attributes: {
            option: "HPWC Gen2",
            pf_id: "G2-HPWC"
        }
    }]
} 
InventoryItem.create!(params[:inventory_item])
InventoryItem.create!(params[:inventory_item2])
InventoryItem.create!(params[:inventory_item3])

InventoryLevel.create([
    {count: rand(150), warehouse_id: 2, inventory_item_id: 1},
    {count: rand(150), warehouse_id: 2, inventory_item_id: 1},
    {count: rand(150), warehouse_id: 2, inventory_item_id: 1}
])

user = User.create(email: "zachary.gomez@powerflex.com", password: "asdf")