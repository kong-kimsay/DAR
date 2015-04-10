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

ActiveRecord::Schema.define(version: 20150410104921) do

  create_table "hr_config_countries", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.string   "khtitle"
    t.text     "description"
    t.text     "khdescription"
    t.integer  "usercreate"
    t.integer  "userupdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hr_config_nations", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.string   "khtitle"
    t.text     "description"
    t.text     "khdescription"
    t.integer  "usercreate"
    t.integer  "userupdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hr_config_religions", force: true do |t|
    t.string   "code"
    t.string   "title"
    t.string   "khtitle"
    t.text     "description"
    t.string   "khdescription"
    t.integer  "usercreate"
    t.integer  "userupdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hr_employee_employeeinfos", force: true do |t|
    t.string   "code",       limit: 50
    t.string   "first_name", limit: 20
    t.string   "last_name",  limit: 50
    t.string   "DOB"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end