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

ActiveRecord::Schema.define(version: 20131021210139) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_of_sessions"
    t.float    "price"
    t.float    "instructor_pay"
    t.string   "level"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "discipline_id"
    t.text     "name"
    t.time     "start_time"
    t.time     "end_time"
    t.string   "photo_url"
  end

  create_table "disciplines", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo_url"
    t.text     "photo_caption"
    t.text     "level_1_description"
    t.text     "level_2_description"
    t.text     "level_3_description"
    t.text     "level_4_description"
    t.text     "all_levels"
    t.text     "apparatus_description"
    t.string   "apparatus_photo_urls",  array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "main", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.boolean  "paid"
    t.string   "timestamps"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "registrations", ["course_id"], name: "index_registrations_on_course_id", using: :btree
  add_index "registrations", ["user_id"], name: "index_registrations_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "role"
    t.string   "injuries"
    t.string   "photo"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_number"
    t.string   "email"
    t.string   "phone_number"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
