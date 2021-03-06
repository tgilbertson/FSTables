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

ActiveRecord::Schema.define(version: 20140917051947) do

  create_table "passings", force: true do |t|
    t.string   "player_id"
    t.integer  "year_id"
    t.integer  "week_id"
    t.string   "team_id"
    t.string   "player_position"
    t.integer  "passing_worth"
    t.integer  "passing_yards"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "player_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "player_position"
    t.string   "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "passings_id"
    t.integer  "rushings_id"
    t.integer  "receivings_id"
  end

  add_index "players", ["passings_id"], name: "index_players_on_passings_id"
  add_index "players", ["receivings_id"], name: "index_players_on_receivings_id"
  add_index "players", ["rushings_id"], name: "index_players_on_rushings_id"

  create_table "receivings", force: true do |t|
    t.string   "player_id"
    t.integer  "year_id"
    t.integer  "week_id"
    t.string   "team_id"
    t.string   "player_position"
    t.integer  "receiving_worth"
    t.integer  "receiving_yards"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rushings", force: true do |t|
    t.string   "player_id"
    t.integer  "year_id"
    t.integer  "week_id"
    t.string   "team_id"
    t.string   "player_position"
    t.integer  "rushing_worth"
    t.integer  "rushing_yards"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "team_id"
    t.integer  "year_id"
    t.integer  "week_id"
    t.string   "home_away"
    t.string   "oppo_id"
    t.integer  "offensive_worth"
    t.integer  "defensive_worth"
    t.integer  "points_allowed"
    t.integer  "points_scored"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "team_id"
    t.string   "team_city"
    t.string   "team_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "schedules_id"
  end

  add_index "teams", ["schedules_id"], name: "index_teams_on_schedules_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
