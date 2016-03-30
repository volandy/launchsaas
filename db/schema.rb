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

ActiveRecord::Schema.define(version: 20160330210035) do

  create_table "drinks", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
  end

  create_table "first_courses", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "first_course_id"
    t.integer  "second_course_id"
    t.integer  "drink_id"
  end

  create_table "orders_drinks", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "drink_id"
  end

  add_index "orders_drinks", ["drink_id"], name: "index_orders_drinks_on_drink_id"
  add_index "orders_drinks", ["order_id"], name: "index_orders_drinks_on_order_id"

  create_table "orders_first_cources", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "first_cource_id"
  end

  add_index "orders_first_cources", ["first_cource_id"], name: "index_orders_first_cources_on_first_cource_id"
  add_index "orders_first_cources", ["order_id"], name: "index_orders_first_cources_on_order_id"

  create_table "orders_first_courses", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "first_course_id"
  end

  add_index "orders_first_courses", ["first_course_id"], name: "index_orders_first_courses_on_first_course_id"
  add_index "orders_first_courses", ["order_id"], name: "index_orders_first_courses_on_order_id"

  create_table "orders_second_courses", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "second_course_id"
  end

  add_index "orders_second_courses", ["order_id"], name: "index_orders_second_courses_on_order_id"
  add_index "orders_second_courses", ["second_course_id"], name: "index_orders_second_courses_on_second_course_id"

  create_table "products", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
  end

  create_table "second_courses", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.boolean  "admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end