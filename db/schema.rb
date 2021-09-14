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

ActiveRecord::Schema.define(version: 2021_09_14_154803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_topics", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "topic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_book_topics_on_book_id"
    t.index ["topic_id"], name: "index_book_topics_on_topic_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "img_url"
    t.string "title"
    t.string "author"
    t.integer "year_published"
    t.string "description"
    t.boolean "read"
    t.bigint "bookshelf_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bookshelf_id"], name: "index_books_on_bookshelf_id"
  end

  create_table "bookshelves", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "topic_name1"
    t.string "topic_name2"
    t.string "topic_name3"
    t.string "topic_name4"
    t.string "topic_name5"
    t.string "topic_name6"
    t.string "topic_name7"
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_topics_on_book_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "book_topics", "books"
  add_foreign_key "book_topics", "topics"
  add_foreign_key "books", "bookshelves"
  add_foreign_key "topics", "books"
end
