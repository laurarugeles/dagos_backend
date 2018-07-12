# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_07_12_014832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "attribute_values", force: :cascade do |t|
    t.bigint "attribute_id"
    t.string "attribute_value_name"
    t.string "attribute_value_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attribute_id"], name: "index_attribute_values_on_attribute_id"
  end

  create_table "attributes", force: :cascade do |t|
    t.string "attribute_name"
    t.string "attribute_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_attribute_values", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "attribute_value_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attribute_value_id"], name: "index_product_attribute_values_on_attribute_value_id"
    t.index ["product_id"], name: "index_product_attribute_values_on_product_id"
  end

  create_table "product_type_attributes", force: :cascade do |t|
    t.bigint "product_type_id"
    t.bigint "attribute_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attribute_id"], name: "index_product_type_attributes_on_attribute_id"
    t.index ["product_type_id"], name: "index_product_type_attributes_on_product_type_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "product_type_name"
    t.string "product_type_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.integer "product_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "product_type_id"
    t.index ["product_type_id"], name: "index_products_on_product_type_id"
  end

  add_foreign_key "attribute_values", "attributes"
  add_foreign_key "product_attribute_values", "attribute_values"
  add_foreign_key "product_attribute_values", "products"
  add_foreign_key "product_type_attributes", "attributes"
  add_foreign_key "product_type_attributes", "product_types"
  add_foreign_key "products", "product_types"
end
