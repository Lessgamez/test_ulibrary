# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_29_024843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "published_year"
    t.string "genre"
    t.integer "stock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string "name"
    t.boolean "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "rol"
    t.string "password"
  end

  create_table "users_books", force: :cascade do |t|
    t.bigint "users_id"
    t.bigint "books_id"
    t.date "ub_date"
    t.boolean "state"
    t.date "deliverdate"
    t.index ["books_id"], name: "index_users_books_on_books_id"
    t.index ["users_id"], name: "index_users_books_on_users_id"
  end

  add_foreign_key "users_books", "books", column: "books_id"
  add_foreign_key "users_books", "users", column: "users_id"
end
