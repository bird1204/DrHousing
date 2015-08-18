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

ActiveRecord::Schema.define(version: 20150405112933) do

  create_table "estate_types", force: :cascade do |t|
    t.integer  "estate_id",     limit: 4, null: false
    t.boolean  "house",         limit: 1, null: false
    t.boolean  "villa",         limit: 1, null: false
    t.boolean  "suiteWithBath", limit: 1, null: false
    t.boolean  "suite",         limit: 1, null: false
    t.boolean  "apartmemt",     limit: 1, null: false
    t.boolean  "preorder",      limit: 1, null: false
    t.boolean  "enabled",       limit: 1, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estate_types", ["estate_id"], name: "index_estate_types_on_estate_id", using: :btree

  create_table "estates", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.string   "address",    limit: 255
    t.float    "size",       limit: 24
    t.float    "mainSize",   limit: 24
    t.float    "age",        limit: 24
    t.integer  "floor",      limit: 4
    t.integer  "unitPrice",  limit: 4,   default: 0,  null: false
    t.integer  "price",      limit: 4,                null: false
    t.boolean  "enabled",    limit: 1,                null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estates", ["address"], name: "index_estates_on_address", using: :btree
  add_index "estates", ["age"], name: "index_estates_on_age", using: :btree
  add_index "estates", ["floor"], name: "index_estates_on_floor", using: :btree
  add_index "estates", ["mainSize"], name: "index_estates_on_mainSize", using: :btree
  add_index "estates", ["name"], name: "index_estates_on_name", using: :btree
  add_index "estates", ["price"], name: "index_estates_on_price", using: :btree
  add_index "estates", ["size"], name: "index_estates_on_size", using: :btree
  add_index "estates", ["unitPrice"], name: "index_estates_on_unitPrice", using: :btree

  create_table "properties", force: :cascade do |t|
    t.integer  "estates_id",  limit: 4,                 null: false
    t.string   "room",        limit: 255, default: "0"
    t.string   "hall",        limit: 255, default: "0"
    t.string   "baths",       limit: 255, default: "0"
    t.string   "smallRoom",   limit: 255, default: "0"
    t.string   "parkingRoom", limit: 255, default: "0"
    t.string   "material",    limit: 255, default: ""
    t.boolean  "enabled",     limit: 1,                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "properties", ["estates_id"], name: "index_properties_on_estates_id", using: :btree
  add_index "properties", ["parkingRoom"], name: "index_properties_on_parkingRoom", using: :btree

end
