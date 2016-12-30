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

ActiveRecord::Schema.define(version: 20161230053743) do

  create_table "paytm_subwallet_requests", force: :cascade do |t|
    t.text     "header",          limit: 65535
    t.text     "body",            limit: 65535
    t.integer  "assignable_id",   limit: 4
    t.string   "assignable_type", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "paytm_subwallet_requests", ["assignable_id", "assignable_type"], name: "assignable_index_on_paytm_subwallet_requests", using: :btree

  create_table "paytm_subwallet_responses", force: :cascade do |t|
    t.text     "header",                     limit: 65535
    t.text     "body",                       limit: 65535
    t.integer  "assignable_id",              limit: 4
    t.string   "assignable_type",            limit: 255
    t.integer  "paytm_subwallet_request_id", limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "paytm_subwallet_responses", ["assignable_id", "assignable_type"], name: "assignable_index_on_paytm_subwallet_responses", using: :btree
  add_index "paytm_subwallet_responses", ["paytm_subwallet_request_id"], name: "index_paytm_subwallet_responses_on_paytm_subwallet_request_id", using: :btree

end
