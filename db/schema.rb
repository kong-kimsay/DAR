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

ActiveRecord::Schema.define(version: 20150518080941) do

  create_table "hr_config_blood_types", force: true do |t|
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

  create_table "hr_config_careercodes", force: true do |t|
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

  create_table "hr_config_certifications", force: true do |t|
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

  create_table "hr_config_contracts", force: true do |t|
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

  create_table "hr_config_departments", force: true do |t|
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

  create_table "hr_config_discipline_actions", force: true do |t|
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

  create_table "hr_config_discipline_types", force: true do |t|
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

  create_table "hr_config_divisions", force: true do |t|
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

  create_table "hr_config_education_types", force: true do |t|
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

  create_table "hr_config_educations", force: true do |t|
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

  create_table "hr_config_initials", force: true do |t|
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

  create_table "hr_config_languages", force: true do |t|
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

  create_table "hr_config_maritals", force: true do |t|
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

  create_table "hr_config_ministries", force: true do |t|
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

  create_table "hr_config_offices", force: true do |t|
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

  create_table "hr_config_provinces", force: true do |t|
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

  create_table "hr_config_relationships", force: true do |t|
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

  create_table "hr_config_transportations", force: true do |t|
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

  create_table "hr_function_employees", force: true do |t|
    t.string   "code",                                null: false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "khfirstname"
    t.string   "khlastname"
    t.string   "offtype"
    t.string   "title"
    t.string   "gender"
    t.date     "dob"
    t.string   "marital"
    t.text     "pob"
    t.integer  "Country_id"
    t.integer  "Nation_id"
    t.integer  "Religion_id"
    t.integer  "Transportation_id"
    t.string   "PassportNo"
    t.datetime "PassportExp"
    t.string   "VisaNo"
    t.datetime "VisaIssue"
    t.datetime "VisaExpiry"
    t.datetime "VisaExtend"
    t.string   "IDCard"
    t.datetime "IDCardExp"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "PhoneExt"
    t.string   "fax"
    t.string   "email1"
    t.string   "email2"
    t.string   "photo"
    t.string   "SpouseName"
    t.string   "SpouseID"
    t.string   "SpouseTax"
    t.string   "BankName"
    t.string   "BankBranch"
    t.string   "BankAccount"
    t.string   "height"
    t.string   "weight"
    t.integer  "BloodType_id"
    t.string   "performance"
    t.string   "branch"
    t.string   "location"
    t.string   "division"
    t.string   "department"
    t.string   "office"
    t.string   "LevelCode"
    t.integer  "Careercode_id"
    t.float    "salary",                   limit: 24
    t.datetime "EffectDate"
    t.datetime "StartDate"
    t.datetime "ProbationDate"
    t.datetime "ExpiryDate"
    t.datetime "PermanentDate"
    t.float    "RetireAge",                limit: 24
    t.datetime "TerminateDate"
    t.string   "TerminateCode"
    t.string   "TerminateRemark"
    t.string   "ContactAddress"
    t.string   "KHContactAddress"
    t.string   "ContactPhone"
    t.string   "PermanentAddress"
    t.string   "KHPermanentAddress"
    t.string   "PermanentPhone"
    t.string   "EmergencyName"
    t.integer  "Relationship_id"
    t.integer  "EmergencyRelationship_id"
    t.string   "EmergencyAddress"
    t.string   "EmergencyPhone"
    t.string   "UserCreate"
    t.string   "UserUpdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "sys_function_users", force: true do |t|
    t.string   "username",               default: "", null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "employee_id",            default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "sys_function_users", ["email"], name: "index_sys_function_users_on_email", unique: true, using: :btree
  add_index "sys_function_users", ["reset_password_token"], name: "index_sys_function_users_on_reset_password_token", unique: true, using: :btree

end
