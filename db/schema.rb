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

ActiveRecord::Schema.define(version: 20141015124555) do

  create_table "resps", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "riskizations", force: true do |t|
    t.integer  "user_id"
    t.integer  "risk_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rver"
    t.integer  "rposl"
    t.string   "danger"
    t.string   "mpred"
  end

  create_table "risks", force: true do |t|
    t.string   "rtype"
    t.string   "risk"
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "name"
    t.string   "twitter_username"
    t.string   "github_username"
    t.string   "website"
    t.date     "date_of_birth"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rabm"
    t.string   "oprab"
    t.string   "hlist"
    t.string   "lstand"
    t.string   "realst"
    t.string   "lrisk"
  end

  create_table "usrs", force: true do |t|
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

  add_index "usrs", ["email"], name: "index_usrs_on_email", unique: true
  add_index "usrs", ["reset_password_token"], name: "index_usrs_on_reset_password_token", unique: true

end
