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

ActiveRecord::Schema.define(version: 20161228083735) do

  create_table "requests", force: :cascade do |t|
    t.text    "header",          limit: 65535
    t.text    "body",            limit: 65535
    t.integer "assignable_id",   limit: 4
    t.string  "assignable_type", limit: 255
  end

  add_index "requests", ["assignable_id", "assignable_type"], name: "assignable_index_on_request", using: :btree

  create_table "responses", force: :cascade do |t|
    t.text    "header",          limit: 65535
    t.text    "body",            limit: 65535
    t.integer "assignable_id",   limit: 4
    t.string  "assignable_type", limit: 255
    t.integer "request_id",      limit: 4
  end

  add_index "responses", ["assignable_type", "assignable_id"], name: "assignable_index_on_response", using: :btree
  add_index "responses", ["request_id"], name: "index_responses_on_request_id", using: :btree

end
