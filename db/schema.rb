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

ActiveRecord::Schema.define(version: 20150619145359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment_votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "comment_id"
    t.boolean "vote",       default: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_votes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
    t.boolean "vote",    default: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",                  null: false
    t.text     "content"
    t.string   "url",        limit: 500
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 30, null: false
    t.string   "password_digest",            null: false
    t.text     "about"
    t.string   "email",                      null: false
    t.integer  "karma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
