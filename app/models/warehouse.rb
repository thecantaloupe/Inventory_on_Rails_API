class Warehouse < ApplicationRecord
    has_many :inventory_levels
end