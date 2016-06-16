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

ActiveRecord::Schema.define(version: 20160616155219) do

  create_table "matches", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.date     "date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "matches_teams", force: :cascade do |t|
    t.integer  "team_id",    limit: 4
    t.integer  "match_id",   limit: 4
    t.integer  "score",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "matches_teams", ["match_id"], name: "index_matches_teams_on_match_id", using: :btree
  add_index "matches_teams", ["team_id"], name: "index_matches_teams_on_team_id", using: :btree

  create_table "predictions", force: :cascade do |t|
    t.integer  "matches_team_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.integer  "score",           limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "predictions", ["matches_team_id"], name: "index_predictions_on_matches_team_id", using: :btree
  add_index "predictions", ["user_id"], name: "index_predictions_on_user_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string   "country",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "matches_teams", "matches"
  add_foreign_key "matches_teams", "teams"
  add_foreign_key "predictions", "matches_teams"
  add_foreign_key "predictions", "users"
end
