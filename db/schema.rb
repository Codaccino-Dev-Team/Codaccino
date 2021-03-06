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

ActiveRecord::Schema.define(version: 20140529045601) do

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type"

  create_table "dynamic_ratings", force: true do |t|
    t.decimal  "wifi_up"
    t.decimal  "wifi_down"
    t.integer  "noise"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shop_id"
    t.integer  "user_id"
    t.integer  "outlet_rating"
  end

  create_table "leads", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "twitter_handle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "site"
    t.string   "phone"
    t.integer  "wifi_up"
    t.integer  "wifi_down"
    t.integer  "outlet_rating"
    t.string   "hrs_wkday"
    t.string   "hrs_saturday"
    t.string   "hrs_sunday"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "noise"
    t.string   "shop_image"
    t.integer  "rating",              default: 1
    t.integer  "ratings_count",       default: 1
    t.decimal  "wifi_up_weight",      default: 1.0
    t.decimal  "wifi_down_weight",    default: 1.0
    t.decimal  "wifi_noise_weight",   default: 1.0
    t.decimal  "wifi_outlets_weight", default: 1.0
    t.decimal  "rank"
  end

  create_table "user_profiles", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.string   "languages"
    t.string   "github_profile_link"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "provider"
    t.string   "uid"
    t.string   "role",                   default: "user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
