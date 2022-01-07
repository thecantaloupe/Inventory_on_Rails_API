class InventoryItem < ApplicationRecord
    has_many :inventory_levels
    has_many :warehouses, through: :inventory_levels
    has_one :inventory_item_selection
    accepts_nested_attributes_for :inventory_item_selection
    accepts_nested_attributes_for :inventory_levels
end
