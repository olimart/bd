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

ActiveRecord::Schema.define(version: 20140424001358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "unaccent"
  enable_extension "isn"

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "editor"
    t.boolean  "read",         default: true
    t.string   "isbn"
    t.datetime "release_date"
    t.string   "keywords"
    t.integer  "serie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tome"
  end

  add_index "books", ["author"], name: "index_books_on_author", using: :btree
  add_index "books", ["editor"], name: "index_books_on_editor", using: :btree
  add_index "books", ["isbn"], name: "index_books_on_isbn", unique: true, using: :btree
  add_index "books", ["serie_id"], name: "index_books_on_serie_id", using: :btree

  create_table "series", force: true do |t|
    t.string "name"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                           default: false
    t.string   "localization",                    default: "fr"
    t.string   "crypted_password"
    t.string   "salt"
    t.text     "default_header"
    t.text     "default_footer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

end
