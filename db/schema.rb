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

ActiveRecord::Schema.define(version: 2019_06_26_192741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boletos", force: :cascade do |t|
    t.integer "sku", null: false
    t.integer "value", null: false
    t.date "expiration_date", null: false
    t.integer "interest"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_boletos_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "main_img"
    t.integer "tickets"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "host"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "p_orders", force: :cascade do |t|
    t.integer "price"
    t.bigint "guest_id"
    t.bigint "host_id"
    t.bigint "ticket_id"
    t.date "o_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_p_orders_on_guest_id"
    t.index ["host_id"], name: "index_p_orders_on_host_id"
    t.index ["ticket_id"], name: "index_p_orders_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.integer "value"
    t.bigint "event_id"
    t.string "ticketImg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sku"
    t.boolean "sold"
    t.index ["event_id"], name: "index_tickets_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
