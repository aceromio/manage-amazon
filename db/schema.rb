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

ActiveRecord::Schema.define(version: 20160127091059) do

  create_table "asins", force: :cascade do |t|
    t.string   "asin"
    t.string   "weight"
    t.string   "length"
    t.string   "width"
    t.string   "height"
    t.string   "jan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "asins", ["asin"], name: "index_asins_on_asin", unique: true

  create_table "orders", force: :cascade do |t|
    t.string   "order_id"
    t.string   "sku"
    t.string   "asin"
    t.string   "sold_price"
    t.string   "fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "orders", ["order_id"], name: "index_orders_on_order_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "prefecture"
    t.string   "phone"
  end

end
