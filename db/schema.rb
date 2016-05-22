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

ActiveRecord::Schema.define(version: 20160521162809) do

  create_table "diymenus", force: :cascade do |t|
    t.integer  "public_account_id"
    t.integer  "parent_id"
    t.string   "name"
    t.string   "key"
    t.string   "url"
    t.boolean  "is_show"
    t.integer  "sort"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "diymenus", ["key"], name: "index_diymenus_on_key"
  add_index "diymenus", ["parent_id"], name: "index_diymenus_on_parent_id"
  add_index "diymenus", ["public_account_id"], name: "index_diymenus_on_public_account_id"

  create_table "public_accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "weixin_secret_key"
    t.string   "weixin_token"
  end

  add_index "public_accounts", ["weixin_secret_key"], name: "index_public_accounts_on_weixin_secret_key"
  add_index "public_accounts", ["weixin_token"], name: "index_public_accounts_on_weixin_token"

end
