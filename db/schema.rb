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

ActiveRecord::Schema.define(version: 2023_05_03_161722) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pr_brands", force: :cascade do |t|
    t.string "brand"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pr_categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pr_classifications", force: :cascade do |t|
    t.string "classification"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pr_colors", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pr_countries", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pr_sub_categories", force: :cascade do |t|
    t.string "sub_category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pr_sweetnesses", force: :cascade do |t|
    t.string "sweetness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "pr_name"
    t.float "price_for_client"
    t.string "description"
    t.string "SKUN"
    t.integer "alc_strength"
    t.integer "alc_endurance"
    t.bigint "pr_category_id", null: false
    t.bigint "pr_sub_category_id", null: false
    t.bigint "pr_brand_id", null: false
    t.bigint "pr_country_id", null: false
    t.bigint "pr_classification_id", null: false
    t.bigint "pr_color_id", null: false
    t.bigint "pr_sweetness_id", null: false
    t.boolean "accessories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pr_brand_id"], name: "index_products_on_pr_brand_id"
    t.index ["pr_category_id"], name: "index_products_on_pr_category_id"
    t.index ["pr_classification_id"], name: "index_products_on_pr_classification_id"
    t.index ["pr_color_id"], name: "index_products_on_pr_color_id"
    t.index ["pr_country_id"], name: "index_products_on_pr_country_id"
    t.index ["pr_sub_category_id"], name: "index_products_on_pr_sub_category_id"
    t.index ["pr_sweetness_id"], name: "index_products_on_pr_sweetness_id"
  end

  add_foreign_key "products", "pr_brands"
  add_foreign_key "products", "pr_categories"
  add_foreign_key "products", "pr_classifications"
  add_foreign_key "products", "pr_colors"
  add_foreign_key "products", "pr_countries"
  add_foreign_key "products", "pr_sub_categories"
  add_foreign_key "products", "pr_sweetnesses"
end
