class Zebra < ApplicationRecord
  has_and_belongs_to_many :apples
  has_and_belongs_to_many :enabled_dynamic_fields, join_table: 'enabled_dynamic_fields_zebras'
end
