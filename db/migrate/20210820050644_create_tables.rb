class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :apples do |t|
      t.timestamps
    end

    create_table :zebras do |t|
      t.timestamps
    end

    create_join_table :apples, :zebras do |t|
      t.index :apple_id, name: 'apple_id_app_zeb_join'
      t.index :zebra_id, name: 'zebra_id_app_zeb_join'
    end

    create_table :enabled_dynamic_fields do |t|
      t.timestamps
    end

    create_join_table :apples, :enabled_dynamic_fields do |t|
      t.index :apple_id, name: 'apple_id_app_edf_join'
      t.index :enabled_dynamic_field_id, name: 'enabled_dynamic_field_id_app_edf_join'
    end

    create_join_table :enabled_dynamic_fields, :zebras do |t|
      t.index :enabled_dynamic_field_id, name: 'enabled_dynamic_field_id_edf_zeb_join'
      t.index :zebra_id, name: 'zebra_id_edf_zeb_join'
    end
  end
end
