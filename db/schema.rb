# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_31_195506) do

  create_table "comments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "trail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "content"
    t.index ["trail_id"], name: "index_comments_on_trail_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "hike_sign_ups", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "hike_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hike_id"], name: "index_hike_sign_ups_on_hike_id"
    t.index ["user_id"], name: "index_hike_sign_ups_on_user_id"
  end

  create_table "hikes", force: :cascade do |t|
    t.integer "trail_id"
    t.date "hike_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "trail_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trail_lists", force: :cascade do |t|
    t.integer "trail_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trails", force: :cascade do |t|
    t.string "name"
    t.string "summary"
    t.string "difficulty"
    t.float "stars"
    t.string "location"
    t.float "length"
    t.string "imgMedium"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "comments", "trails"
  add_foreign_key "comments", "users"
  add_foreign_key "hike_sign_ups", "hikes"
  add_foreign_key "hike_sign_ups", "users"
end
