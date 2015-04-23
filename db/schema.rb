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

ActiveRecord::Schema.define(version: 20150423080230) do

  create_table "students", force: :cascade do |t|
    t.string   "student_name"
    t.string   "sex"
    t.integer  "age"
    t.integer  "team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "students", ["team_id"], name: "index_students_on_team_id"

  create_table "teacher_teams", force: :cascade do |t|
    t.integer  "teacher_id"
    t.integer  "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teacher_teams", ["teacher_id"], name: "index_teacher_teams_on_teacher_id"
  add_index "teacher_teams", ["team_id"], name: "index_teacher_teams_on_team_id"

  create_table "teachers", force: :cascade do |t|
    t.string   "teacher_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
