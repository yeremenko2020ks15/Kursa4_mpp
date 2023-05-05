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

ActiveRecord::Schema.define(version: 2023_05_05_195444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "cart_items", force: :cascade do |t|
    t.bigint "shopping_session_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity"
    t.float "total"
    t.index ["product_id"], name: "index_cart_items_on_product_id"
    t.index ["shopping_session_id"], name: "index_cart_items_on_shopping_session_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.float "rating"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_comments_on_product_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.integer "disc"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_discounts_on_product_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "cart_item_id", null: false
    t.bigint "payment_type_id", null: false
    t.string "payment_id"
    t.boolean "completed"
    t.boolean "rejection"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cart_item_id"], name: "index_order_details_on_cart_item_id"
    t.index ["payment_type_id"], name: "index_order_details_on_payment_type_id"
    t.index ["user_id"], name: "index_order_details_on_user_id"
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "type"
  end

  create_table "pr_alcohols", force: :cascade do |t|
    t.float "alcohol"
  end

  create_table "pr_brands", force: :cascade do |t|
    t.string "brand"
  end

  create_table "pr_categories", force: :cascade do |t|
    t.string "category"
  end

  create_table "pr_colors", force: :cascade do |t|
    t.string "color"
  end

  create_table "pr_countries", force: :cascade do |t|
    t.string "country"
  end

  create_table "pr_endurances", force: :cascade do |t|
    t.integer "endurance"
  end

  create_table "pr_sub_categories", force: :cascade do |t|
    t.string "sub_category"
  end

  create_table "pr_sweetnesses", force: :cascade do |t|
    t.string "sweetness"
  end

  create_table "pr_volumes", force: :cascade do |t|
    t.string "volume"
  end

  create_table "product_inventories", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.float "price"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_product_inventories_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "pr_name"
    t.float "price_for_client"
    t.string "description"
    t.string "SKUN"
    t.integer "quantity"
    t.bigint "pr_volume_id"
    t.bigint "pr_alcohol_id"
    t.bigint "pr_endurance_id"
    t.bigint "pr_category_id"
    t.bigint "pr_sub_category_id"
    t.bigint "pr_brand_id"
    t.bigint "pr_country_id"
    t.bigint "pr_color_id"
    t.bigint "pr_sweetness_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pr_alcohol_id"], name: "index_products_on_pr_alcohol_id"
    t.index ["pr_brand_id"], name: "index_products_on_pr_brand_id"
    t.index ["pr_category_id"], name: "index_products_on_pr_category_id"
    t.index ["pr_color_id"], name: "index_products_on_pr_color_id"
    t.index ["pr_country_id"], name: "index_products_on_pr_country_id"
    t.index ["pr_endurance_id"], name: "index_products_on_pr_endurance_id"
    t.index ["pr_sub_category_id"], name: "index_products_on_pr_sub_category_id"
    t.index ["pr_sweetness_id"], name: "index_products_on_pr_sweetness_id"
    t.index ["pr_volume_id"], name: "index_products_on_pr_volume_id"
  end

  create_table "shopping_sessions", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_shopping_sessions_on_user_id"
  end

  create_table "user_addresses", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "state"
    t.string "city"
    t.string "address_street"
    t.integer "house_num"
    t.integer "postal_code"
    t.index ["user_id"], name: "index_user_addresses_on_user_id"
  end

  create_table "user_payments", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "code"
    t.integer "cvv"
    t.string "date"
    t.string "name"
    t.index ["user_id"], name: "index_user_payments_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "full_name"
    t.string "email"
    t.string "telephone"
    t.boolean "is_admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cart_items", "products"
  add_foreign_key "cart_items", "shopping_sessions"
  add_foreign_key "comments", "products"
  add_foreign_key "comments", "users"
  add_foreign_key "discounts", "products"
  add_foreign_key "order_details", "cart_items"
  add_foreign_key "order_details", "payment_types"
  add_foreign_key "order_details", "users"
  add_foreign_key "product_inventories", "products"
  add_foreign_key "products", "pr_alcohols"
  add_foreign_key "products", "pr_brands"
  add_foreign_key "products", "pr_categories"
  add_foreign_key "products", "pr_colors"
  add_foreign_key "products", "pr_countries"
  add_foreign_key "products", "pr_endurances"
  add_foreign_key "products", "pr_sub_categories"
  add_foreign_key "products", "pr_sweetnesses"
  add_foreign_key "products", "pr_volumes"
  add_foreign_key "shopping_sessions", "users"
  add_foreign_key "user_addresses", "users"
  add_foreign_key "user_payments", "users"
end
