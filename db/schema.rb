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

ActiveRecord::Schema.define(version: 20131020161012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "number_of_sessions"
    t.float    "price"
    t.float    "instructior_pay"
    t.string   "level"
    t.text     "description"
    t.string   "discipline"
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
  end

end
