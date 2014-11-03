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

ActiveRecord::Schema.define(version: 20141103195510) do

  create_table "characteristics", force: true do |t|
    t.string   "name"
    t.boolean  "evaluable"
    t.text     "description"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characteristics", ["customer_id"], name: "index_characteristics_on_customer_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evaluations", force: true do |t|
    t.integer  "score"
    t.text     "comment"
    t.integer  "product_characteristics_id"
    t.integer  "user_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "evaluations", ["customer_id"], name: "index_evaluations_on_customer_id", using: :btree
  add_index "evaluations", ["product_characteristics_id"], name: "index_evaluations_on_product_characteristics_id", using: :btree
  add_index "evaluations", ["user_id"], name: "index_evaluations_on_user_id", using: :btree

  create_table "product_characteristics", force: true do |t|
    t.integer  "product_id"
    t.integer  "characteristic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_characteristics", ["characteristic_id"], name: "index_product_characteristics_on_characteristic_id", using: :btree
  add_index "product_characteristics", ["product_id"], name: "index_product_characteristics_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["customer_id"], name: "index_products_on_customer_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.text     "about"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["customer_id"], name: "index_users_on_customer_id", using: :btree

end
