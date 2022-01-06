class InventoryItem < ApplicationRecord
    has_many :inventory_levels
    has_many :warehouse, through: :inventory_levels
    has_one :inventory_item_selection
end
