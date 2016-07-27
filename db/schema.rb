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

ActiveRecord::Schema.define(version: 20160727095854) do

  create_table "brokentoolreportsheets", force: :cascade do |t|
    t.string   "toolname"
    t.text     "toolfault"
    t.string   "toollocation"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "factories", force: :cascade do |t|
    t.string "name"
    t.text   "address"
  end

  create_table "faultsheets", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "fault"
    t.integer  "vendingmachine_id"
  end

  add_index "faultsheets", ["vendingmachine_id"], name: "index_faultsheets_on_vendingmachine_id"

  create_table "stockchecksheets", force: :cascade do |t|
    t.string  "item1"
    t.string  "item2"
    t.string  "item3"
    t.string  "item4"
    t.string  "item5"
    t.integer "vendingmachine_id"
    t.integer "item11"
    t.integer "item12"
    t.integer "item21"
    t.integer "item22"
    t.integer "item31"
    t.integer "item32"
    t.integer "item41"
    t.integer "item42"
    t.integer "item51"
    t.integer "item52"
  end

  add_index "stockchecksheets", ["vendingmachine_id"], name: "index_stockchecksheets_on_vendingmachine_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",      default: false
  end

  create_table "vendingmachines", force: :cascade do |t|
    t.string   "title"
    t.string   "configuration"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "factory_id"
  end

  add_index "vendingmachines", ["factory_id"], name: "index_vendingmachines_on_factory_id"

end
