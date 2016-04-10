class CreatingDatabase < ActiveRecord::Migration
  def change
    create_table "drinks", force: :true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.date     "created_at"
  end

  create_table "first_courses", force: :true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.date     "created_at"
  end

  create_table "orders", force: :true do |t|
    t.integer  "user_id"
    t.datetime "updated_at",       null: false
    t.integer  "first_course_id"
    t.integer  "second_course_id"
    t.integer  "drink_id"
    t.date     "created_at"
  end

  create_table "second_courses", force: :true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "updated_at", null: false
    t.integer  "order_id"
    t.date     "created_at"
  end

  create_table "users", force: :true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
end
