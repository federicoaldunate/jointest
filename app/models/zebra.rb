class Zebra < ApplicationRecord
  has_and_belongs_to_many :enabled_dynamic_fields
end
