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

ActiveRecord::Schema.define(version: 20150321224158) do

  create_table "hospitals", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "username",        limit: 255
    t.string   "password",        limit: 255
    t.float    "latitude",        limit: 24
    t.float    "longitude",       limit: 24
    t.integer  "ambulance_count", limit: 4
    t.integer  "hospital_type",   limit: 4
    t.float    "distance",        limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "routes", force: :cascade do |t|
    t.float    "latitude",    limit: 24
    t.float    "longitude",   limit: 24
    t.string   "device_id",   limit: 255
    t.integer  "hospital_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "routes", ["hospital_id"], name: "index_routes_on_hospital_id", using: :btree

  add_foreign_key "routes", "hospitals"
end
