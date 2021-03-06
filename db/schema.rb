# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150813021506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventory_items", force: true do |t|
    t.integer  "profile_id"
    t.integer  "item_id"
    t.integer  "qty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.string   "name"
    t.integer  "space_occupied"
    t.integer  "cost"
    t.integer  "weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "players_profiles", force: true do |t|
    t.integer  "total_score"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minigame_score"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "oauth_token"
    t.string   "name"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "email"
    t.integer  "age"
    t.text     "profile_photo_url"
  end

end
