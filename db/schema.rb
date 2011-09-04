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

ActiveRecord::Schema.define(:version => 20110903075828) do

  create_table "bill_contents", :force => true do |t|
    t.integer  "bill_id"
    t.integer  "menu_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bills", :force => true do |t|
    t.string   "name"
    t.float    "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rations", :force => true do |t|
    t.string   "name"
    t.float    "quantity"
    t.string   "units"
    t.text     "description"
    t.datetime "last_finished_on"
    t.datetime "last_purchased_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
