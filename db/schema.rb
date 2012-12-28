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

ActiveRecord::Schema.define(:version => 20121225123253) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "quantity"
  end

  create_table "orders", :force => true do |t|
    t.integer  "cart_id"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.string   "shipping_middle_name"
    t.string   "shipping_address1"
    t.string   "shipping_address2"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.integer  "shipping_zip"
    t.string   "billing_first_name"
    t.string   "billing_last_name"
    t.string   "billing_middle_name"
    t.string   "billing_address1"
    t.string   "billing_address2"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_zip"
    t.string   "order_no"
    t.string   "transaction_status",   :default => "F"
    t.integer  "total"
    t.integer  "shipping_fee",         :default => 0
    t.integer  "sales_tax",            :default => 0
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "payments", :force => true do |t|
    t.string   "status"
    t.float    "amount"
    t.string   "email"
    t.string   "transaction_number"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "stripe_customer_token"
  end

  create_table "photos", :force => true do |t|
    t.integer  "product_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "data_file_name"
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.datetime "data_updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price"
    t.string   "color"
    t.string   "model_no"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
