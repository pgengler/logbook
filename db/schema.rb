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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120413201155) do

  create_table "entries", :force => true do |t|
    t.date     "flown"
    t.integer  "plane_id"
    t.string   "from"
    t.string   "to"
    t.text     "remarks"
    t.integer  "takeoffs"
    t.integer  "landings"
    t.decimal  "sel"
    t.decimal  "mel"
    t.decimal  "night"
    t.decimal  "actual_instrument"
    t.decimal  "simulated_instrument"
    t.integer  "instrument_approaches"
    t.decimal  "cross_country"
    t.decimal  "solo"
    t.decimal  "dual_received"
    t.decimal  "pic"
    t.decimal  "total_flight"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "entries", ["plane_id"], :name => "index_entries_on_plane_id"

  create_table "planes", :force => true do |t|
    t.string   "tail_number"
    t.string   "model"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
