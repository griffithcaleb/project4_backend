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

ActiveRecord::Schema.define(version: 2019_03_03_221316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "billboard", id: false, force: :cascade do |t|
    t.string "content", limit: 50
    t.integer "number_of_likes"
    t.string "author", limit: 30
    t.string "date_published", limit: 16
    t.string "view", limit: 20
    t.serial "id", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "info"
    t.integer "number_of_likes"
    t.string "view"
    t.string "author"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.string "name"
    t.string "instrument"
    t.string "bio"
    t.string "locations"
    t.string "auth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
