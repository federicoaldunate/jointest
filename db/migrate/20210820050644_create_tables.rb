class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :enabled_dynamic_fields do |t|
      t.timestamps
    end

    create_table :apples do |t|
      t.timestamps
    end

    create_table :zebras do |t|
      t.timestamps
    end

    create_join_table :apples, :enabled_dynamic_fields do |t|
      t.index :apple_id
      t.index :enabled_dynamic_field_id
    end

    create_join_table :enabled_dynamic_fields, :zebras do |t|
      t.index :enabled_dynamic_field_id
      t.index :zebra_id
    end
  end
end
