# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_03_031204) do

  create_table "costumers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "address"
    t.string "password"
    t.string "email"
    t.decimal "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "venue_id"
    t.index ["venue_id"], name: "index_events_on_venue_id"
  end

  create_table "ticke_orders", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ticket_id"
    t.index ["ticket_id"], name: "index_ticke_orders_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "tipo"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_tickets_on_event_id"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.decimal "capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "events", "venues"
  add_foreign_key "ticke_orders", "tickets"
  add_foreign_key "tickets", "events"
end
