# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_20_050644) do

  create_table "apples", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "apples_enabled_dynamic_fields", id: false, force: :cascade do |t|
    t.integer "apple_id", null: false
    t.integer "enabled_dynamic_field_id", null: false
    t.index ["apple_id"], name: "index_apples_enabled_dynamic_fields_on_apple_id"
    t.index ["enabled_dynamic_field_id"], name: "index_apples_enabled_dynamic_fields_on_enabled_dynamic_field_id"
  end

  create_table "enabled_dynamic_fields", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enabled_dynamic_fields_zebras", id: false, force: :cascade do |t|
    t.integer "enabled_dynamic_field_id", null: false
    t.integer "zebra_id", null: false
    t.index ["enabled_dynamic_field_id"], name: "index_enabled_dynamic_fields_zebras_on_enabled_dynamic_field_id"
    t.index ["zebra_id"], name: "index_enabled_dynamic_fields_zebras_on_zebra_id"
  end

  create_table "zebras", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
