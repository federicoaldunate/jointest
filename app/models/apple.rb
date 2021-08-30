class Apple < ApplicationRecord
  has_and_belongs_to_many :enabled_dynamic_fields, join_table: 'apples_enabled_dynamic_fields'
  has_and_belongs_to_many :zebras
end
