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

ActiveRecord::Schema.define(version: 20140825184616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "devices", force: true do |t|
    t.string   "udid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devices", ["udid"], name: "index_devices_on_udid", using: :btree

  create_table "event_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "tag"
    t.integer  "event_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["tag"], name: "index_events_on_tag", using: :btree

  create_table "fact_details", force: true do |t|
    t.integer  "fact_id"
    t.integer  "order"
    t.datetime "happened_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fact_details", ["fact_id"], name: "index_fact_details_on_fact_id", using: :btree

  create_table "facts", force: true do |t|
    t.integer  "session_id"
    t.integer  "event_id"
    t.integer  "context_id"
    t.string   "context_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "facts", ["context_id", "context_type"], name: "index_facts_on_context_id_and_context_type", using: :btree
  add_index "facts", ["session_id"], name: "index_facts_on_session_id", using: :btree

  create_table "sessions", force: true do |t|
    t.integer  "device_id"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["device_id"], name: "index_sessions_on_device_id", using: :btree
  add_index "sessions", ["started_at", "finished_at"], name: "index_sessions_on_started_at_and_finished_at", using: :btree
  add_index "sessions", ["status"], name: "index_sessions_on_status", using: :btree

end
