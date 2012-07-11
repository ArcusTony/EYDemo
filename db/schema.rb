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

ActiveRecord::Schema.define(:version => 20120711130157) do

  create_table "customers", :force => true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.integer  "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "plots", :force => true do |t|
    t.string   "site"
    t.float    "size"
    t.integer  "length"
    t.integer  "width"
    t.boolean  "shed"
    t.boolean  "disabledAccess"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "sites", :force => true do |t|
    t.string   "name"
    t.float    "lat"
    t.float    "long"
    t.string   "manager"
    t.integer  "plotsMax"
    t.integer  "plotsUsed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tenancies", :force => true do |t|
    t.date     "startDate"
    t.date     "stopDate"
    t.string   "billingType"
    t.float    "charge"
    t.string   "creator"
    t.integer  "customer_id"
    t.integer  "plot_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
