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

ActiveRecord::Schema.define(version: 20170322160841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers_tables", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "phone_number"
  end

  create_table "payments_tables", force: :cascade do |t|
    t.integer "advance_paid"
    t.integer "total", null: false
    t.bigint "room_allocation_id"
    t.index ["room_allocation_id"], name: "index_payments_tables_on_room_allocation_id"
  end

  create_table "room_allocations_tables", force: :cascade do |t|
    t.bigint "room_id", null: false
    t.bigint "customer_id", null: false
    t.bigint "payment_id"
    t.datetime "check_in", null: false
    t.datetime "check_out", null: false
    t.index ["customer_id"], name: "index_room_allocations_tables_on_customer_id"
    t.index ["payment_id"], name: "index_room_allocations_tables_on_payment_id"
    t.index ["room_id"], name: "index_room_allocations_tables_on_room_id"
  end

  create_table "rooms_tables", force: :cascade do |t|
    t.integer "number", null: false
    t.boolean "occupancy_status", default: false, null: false
    t.boolean "maintainence_required", default: false, null: false
    t.index ["maintainence_required"], name: "index_rooms_tables_on_maintainence_required"
    t.index ["number"], name: "index_rooms_tables_on_number"
    t.index ["occupancy_status"], name: "index_rooms_tables_on_occupancy_status"
  end

end
