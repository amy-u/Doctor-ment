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

ActiveRecord::Schema.define(version: 2021_07_12_235539) do

  create_table "diets", force: :cascade do |t|
    t.string "name"
    t.text "photo"
    t.text "description"
    t.string "meal_time"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_diets_on_user_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "hospital_name"
    t.text "address"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.text "notes"
    t.string "start_date"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_medications_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.text "photo"
    t.text "allergic"
    t.text "member_ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "diets", "users"
  add_foreign_key "doctors", "users"
  add_foreign_key "medications", "users"
end
