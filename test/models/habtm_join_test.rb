require "test_helper"
ActiveRecord::Base.logger = Logger.new(STDOUT) if defined?(ActiveRecord::Base)

class HabtmJoinTest < ActiveSupport::TestCase
  test "Apple has_and_belongs_to_many Zebras relationship exists" do
    apple = Apple.create!
    assert apple.zebras.length == 0
  end

  test "Zebra has_and_belongs_to_many Apples relationship exists" do
    zebra = Zebra.create!
    assert zebra.apples.length == 0
  end

  test "Apple has_and_belongs_to_many EnabledDynamicFields relationship exists" do
    apple = Apple.create!
    assert apple.enabled_dynamic_fields.length == 0
  end

  test "EnabledDynamicField has_and_belongs_to_many Apples relationship exists" do
    enabled_dynamic_field = EnabledDynamicField.create!
    assert enabled_dynamic_field.apples.length == 0
  end

  test "Zebra has_and_belongs_to_many EnabledDynamicFields relationship exists" do
    zebra = Zebra.create!
    assert zebra.enabled_dynamic_fields.length == 0
  end

  test "EnabledDynamicField has_and_belongs_to_many Zebras relationship exists" do
    enabled_dynamic_field = EnabledDynamicField.create!
    assert enabled_dynamic_field.zebras.length == 0
  end
end
