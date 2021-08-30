class EnabledDynamicField < ApplicationRecord
  has_and_belongs_to_many :apples
  has_and_belongs_to_many :zebras
end
