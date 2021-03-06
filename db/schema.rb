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

ActiveRecord::Schema.define(:version => 20130418185345) do

  create_table "authorize_users", :force => true do |t|
    t.string   "username",               :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "role",                   :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "authorize_users", ["email"], :name => "index_authorize_users_on_email", :unique => true
  add_index "authorize_users", ["reset_password_token"], :name => "index_authorize_users_on_reset_password_token", :unique => true
  add_index "authorize_users", ["username"], :name => "index_authorize_users_on_username", :unique => true

  create_table "labels", :force => true do |t|
    t.string   "label_1"
    t.string   "label_2"
    t.string   "label_3"
    t.string   "label_4"
    t.string   "label_5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questions", :force => true do |t|
    t.integer  "survey_id"
    t.string   "question_id"
    t.string   "question"
    t.string   "option"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "student_logins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "student_logins", ["email"], :name => "index_student_logins_on_email", :unique => true
  add_index "student_logins", ["reset_password_token"], :name => "index_student_logins_on_reset_password_token", :unique => true

  create_table "surveys", :force => true do |t|
    t.string   "course_id"
    t.string   "section_id"
    t.string   "instructor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "label_1"
    t.string   "label_2"
    t.string   "label_3"
    t.string   "label_4"
    t.string   "label_5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
