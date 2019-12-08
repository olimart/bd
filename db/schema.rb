# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_30_130752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "btree_gin"
  enable_extension "isn"
  enable_extension "plpgsql"
  enable_extension "unaccent"

  create_table "books", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "editor"
    t.boolean "read", default: true
    t.string "isbn"
    t.datetime "release_date"
    t.string "keywords"
    t.integer "serie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "tome"
    t.string "cover_url"
    t.index ["author"], name: "index_books_on_author"
    t.index ["editor"], name: "index_books_on_editor"
    t.index ["isbn"], name: "index_books_on_isbn"
    t.index ["serie_id"], name: "index_books_on_serie_id"
  end

  create_table "series", id: :serial, force: :cascade do |t|
    t.string "name"
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.string "localization", default: "fr"
    t.string "crypted_password"
    t.string "salt"
    t.text "default_header"
    t.text "default_footer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

end
