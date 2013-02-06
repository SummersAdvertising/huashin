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

ActiveRecord::Schema.define(:version => 20130205085303) do

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

  create_table "answers", :force => true do |t|
    t.text     "content"
    t.string   "answererName"
    t.integer  "question_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "newcreate"
  end

  create_table "newsphotos", :force => true do |t|
    t.string   "image"
    t.integer  "news_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orderitems", :force => true do |t|
    t.integer  "order_id"
    t.integer  "orderproduct_id"
    t.integer  "amount"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "orderproductphotos", :force => true do |t|
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "orderproducts", :force => true do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "descript"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.boolean  "admindelete"
    t.date     "addDate"
    t.string   "frontshow"
    t.string   "image"
    t.string   "weight"
    t.string   "amountperbox"
    t.string   "fruitType"
  end

  create_table "orders", :force => true do |t|
    t.integer  "totalprice"
    t.string   "customername"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "tel"
    t.string   "shippingfee"
  end

  create_table "productclasses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "productphotos", :force => true do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.text     "descript"
    t.boolean  "frontshow"
    t.string   "image"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "productclass_id"
    t.date     "addDate"
  end

  create_table "questions", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "askerName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
  end

end
