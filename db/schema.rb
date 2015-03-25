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

ActiveRecord::Schema.define(version: 20150317062614) do

  create_table "crews", force: true do |t|
    t.string   "last_name"
    t.string   "given_name"
    t.string   "middle_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "given_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenances", force: true do |t|
    t.integer  "train_id"
    t.integer  "crew_id"
    t.date     "maintenance_date"
    t.time     "maintenance_time"
    t.string   "task"
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "maintenances", ["crew_id"], name: "index_maintenances_on_crew_id"
  add_index "maintenances", ["train_id"], name: "index_maintenances_on_train_id"

  create_table "routes", force: true do |t|
    t.string   "origin"
    t.string   "destination"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ticket_trips", force: true do |t|
    t.integer  "ticket_id"
    t.integer  "trip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ticket_trips", ["ticket_id"], name: "index_ticket_trips_on_ticket_id"
  add_index "ticket_trips", ["trip_id"], name: "index_ticket_trips_on_trip_id"

  create_table "tickets", force: true do |t|
    t.integer  "customer_id"
    t.date     "purchase_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tickets", ["customer_id"], name: "index_tickets_on_customer_id"

  create_table "trains", force: true do |t|
    t.string   "model"
    t.integer  "max_speed"
    t.integer  "no_of_seats"
    t.integer  "no_of_toilets"
    t.boolean  "reclining_seats"
    t.boolean  "folding_tables"
    t.boolean  "disability_access"
    t.boolean  "luggage_storage"
    t.boolean  "vending_machines"
    t.boolean  "food_service"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trips", force: true do |t|
    t.integer  "train_id"
    t.integer  "route_id"
    t.datetime "trip_date"
    t.integer  "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trips", ["route_id"], name: "index_trips_on_route_id"
  add_index "trips", ["train_id"], name: "index_trips_on_train_id"

end
