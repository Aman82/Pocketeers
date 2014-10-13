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

ActiveRecord::Schema.define(version: 20141013053509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "curriculums", force: true do |t|
    t.string   "title"
    t.string   "topic"
    t.text     "summary"
    t.text     "syllabus"
    t.string   "timeframe"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.string   "topic"
    t.string   "location"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "chatbox"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "curriculum_id"
  end

  create_table "interests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "count"
    t.string   "topic"
  end

  create_table "reviews", force: true do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_groups", force: true do |t|
    t.integer  "privilege"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "group_id"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "phone_number"
    t.integer  "privilege"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
