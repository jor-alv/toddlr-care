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

ActiveRecord::Schema.define(version: 2022_05_24_205724) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultations", force: :cascade do |t|
    t.date "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "client_id", null: false
    t.bigint "daycare_id", null: false
    t.index ["client_id"], name: "index_consultations_on_client_id"
    t.index ["daycare_id"], name: "index_consultations_on_daycare_id"
  end

  create_table "daycare_tags", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "daycare_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["daycare_id"], name: "index_daycare_tags_on_daycare_id"
    t.index ["tag_id"], name: "index_daycare_tags_on_tag_id"
  end

  create_table "daycares", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.float "rating"
    t.text "description"
    t.integer "price"
    t.integer "number_of_openings"
    t.date "opening_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "supplier_id", null: false
    t.index ["supplier_id"], name: "index_daycares_on_supplier_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "client_id", null: false
    t.bigint "daycare_id", null: false
    t.index ["client_id"], name: "index_reviews_on_client_id"
    t.index ["daycare_id"], name: "index_reviews_on_daycare_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.integer "category"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consultations", "daycares"
  add_foreign_key "consultations", "users", column: "client_id"
  add_foreign_key "daycare_tags", "daycares"
  add_foreign_key "daycare_tags", "tags"
  add_foreign_key "daycares", "users", column: "supplier_id"
  add_foreign_key "reviews", "daycares"
  add_foreign_key "reviews", "users", column: "client_id"
end
