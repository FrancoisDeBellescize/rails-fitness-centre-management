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

ActiveRecord::Schema.define(version: 20170501162737) do

  create_table "bookings", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "membership_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "classe_id"
    t.integer  "number"
    t.index ["classe_id"], name: "index_bookings_on_classe_id"
  end

  create_table "classes", force: :cascade do |t|
    t.string   "name"
    t.string   "day"
    t.text     "description"
    t.string   "instructor_name"
    t.date     "date_start"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.time     "time"
  end

  create_table "membership_options", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
