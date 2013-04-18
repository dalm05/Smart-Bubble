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

ActiveRecord::Schema.define(:version => 20130418022756) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "survey_id"
    t.string   "course_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "labels", :force => true do |t|
    t.string   "label_1"
    t.string   "label_2"
    t.string   "label_3"
    t.string   "label_4"
    t.string   "label_5"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "question"
    t.string   "type"
    t.date     "released_on"
    t.integer  "publisher_id"
    t.integer  "rating"
    t.boolean  "discontinued", :default => false, :null => false
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "publishers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "questionnaires", :force => true do |t|
    t.string   "question"
    t.string   "questionType", :default => "Bullet"
    t.string   "response"
    t.string   "course"
    t.integer  "section"
    t.integer  "semester"
    t.string   "instructor"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "survey_id"
    t.string   "question_id"
    t.string   "question"
    t.string   "option"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "selections", :force => true do |t|
    t.string   "question"
    t.string   "choice"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "survey_id"
    t.string   "course_id"
    t.string   "section_id"
    t.string   "instructor_id"
    t.string   "question_a"
    t.string   "question_b"
    t.string   "question_c"
    t.string   "question_d"
    t.string   "question_e"
    t.string   "question_f"
    t.string   "question_g"
    t.string   "question_h"
    t.string   "question_i"
    t.string   "question_j"
    t.string   "question_k"
    t.string   "question_l"
    t.string   "response_a"
    t.string   "response_b"
    t.string   "response_c"
    t.string   "response_d"
    t.string   "response_e"
    t.string   "response_f"
    t.string   "response_g"
    t.string   "response_h"
    t.string   "response_i"
    t.string   "response_j"
    t.string   "response_k"
    t.string   "response_l"
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
    t.string   "survey_id"
  end

end
