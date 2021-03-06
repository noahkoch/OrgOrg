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

ActiveRecord::Schema.define(:version => 20140411000757) do

  create_table "api_keys", :force => true do |t|
    t.string   "key"
    t.integer  "user_id"
    t.boolean  "active"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "application_url"
  end

  create_table "board_members", :force => true do |t|
    t.integer  "board_id"
    t.integer  "member_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "board_seat_id"
    t.boolean  "is_active"
    t.datetime "installation_date"
    t.datetime "appointment_date"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "board_seats", :force => true do |t|
    t.integer  "board_id"
    t.boolean  "alternate"
    t.text     "qualifications"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "term_notes"
    t.boolean  "is_active"
    t.integer  "period"
    t.string   "title"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "boards", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "title"
    t.integer  "seats"
    t.integer  "alternating_seats"
    t.text     "qualifications"
    t.integer  "department_id"
    t.string   "meeting_dates"
    t.string   "meeting_place"
    t.string   "meeting_time"
    t.text     "duties"
    t.string   "url"
    t.integer  "term_length"
    t.boolean  "is_active"
    t.integer  "state_id"
    t.integer  "county_id"
    t.integer  "city_id"
    t.string   "meeting_cron"
    t.string   "next_opening"
    t.string   "next_opening_qual"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "state_id"
    t.boolean  "is_active"
  end

  create_table "city_counties", :force => true do |t|
    t.integer  "city_id"
    t.integer  "county_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "is_active"
  end

  create_table "counties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "state_id"
    t.integer  "code_id"
    t.boolean  "is_active"
  end

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "is_active"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "members", :force => true do |t|
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_active"
    t.integer  "state_id"
    t.integer  "county_id"
    t.integer  "city_id"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "abbreviation"
    t.integer  "code_id"
    t.boolean  "is_active"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.boolean  "approved",               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
