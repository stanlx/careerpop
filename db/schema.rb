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

ActiveRecord::Schema.define(version: 20140504134559) do

  create_table "answers", force: true do |t|
    t.integer  "user_id"
    t.integer  "question_option_id"
    t.integer  "answer_number"
    t.string   "answer_text"
    t.boolean  "answer_yn"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "input_types", force: true do |t|
    t.string   "input_type_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "option_choices", force: true do |t|
    t.integer  "option_group_id"
    t.string   "option_choice_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "option_groups", force: true do |t|
    t.string   "option_group_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "origins", force: true do |t|
    t.string   "name"
    t.string   "source"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_options", force: true do |t|
    t.integer  "question_id"
    t.integer  "option_choice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "survey_section_id"
    t.integer  "input_type_id"
    t.string   "question_name"
    t.string   "question_subtext"
    t.boolean  "answer_required"
    t.boolean  "allow_multiple_answers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_headers", force: true do |t|
    t.string   "survey_name"
    t.string   "instructions"
    t.string   "other_header_info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survey_sections", force: true do |t|
    t.integer  "survey_header_id"
    t.string   "section_name"
    t.string   "section_title"
    t.string   "section_subheading"
    t.boolean  "section_required"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_survey_sections", force: true do |t|
    t.integer  "user_id"
    t.integer  "survey_section_id"
    t.datetime "completed_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.integer  "school"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
