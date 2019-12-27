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

ActiveRecord::Schema.define(version: 20191226122801) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.integer  "resource_id",   limit: 4
    t.string   "resource_type", limit: 255
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "bedroms", force: :cascade do |t|
    t.string  "Name",             limit: 50
    t.integer "floors_id",        limit: 4,  null: false
    t.integer "floors_houses_id", limit: 4,  null: false
  end

  add_index "bedroms", ["floors_id"], name: "floors_id", using: :btree

  create_table "floors", force: :cascade do |t|
    t.string  "Name",      limit: 50
    t.integer "houses_id", limit: 4,  null: false
  end

  add_index "floors", ["houses_id"], name: "houses_id", using: :btree

  create_table "houses", force: :cascade do |t|
    t.string "Name", limit: 50
  end

  create_table "occupants", force: :cascade do |t|
    t.string "Name", limit: 50
  end

  create_table "occupants_has_bedrooms", id: false, force: :cascade do |t|
    t.integer "occupants_id",              limit: 4, null: false
    t.integer "bedrooms_id",               limit: 4, null: false
    t.integer "bedrooms_floors_id",        limit: 4, null: false
    t.integer "bedrooms_floors_houses_id", limit: 4, null: false
  end

  add_index "occupants_has_bedrooms", ["bedrooms_id"], name: "bedrooms_id", using: :btree
  add_index "occupants_has_bedrooms", ["occupants_id"], name: "occupants_id", using: :btree

  add_foreign_key "bedroms", "floors", column: "floors_id", name: "floors_id"
  add_foreign_key "floors", "houses", column: "houses_id", name: "houses_id"
  add_foreign_key "occupants_has_bedrooms", "bedroms", column: "bedrooms_id", name: "occupants_has_bedrooms_ibfk_2"
  add_foreign_key "occupants_has_bedrooms", "occupants", column: "occupants_id", name: "occupants_has_bedrooms_ibfk_1"
end
