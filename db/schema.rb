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

ActiveRecord::Schema.define(version: 20150203104744) do

  create_table "books", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "intro",        limit: 65535
    t.date     "release_date"
    t.string   "slug",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "books", ["release_date"], name: "index_books_on_release_date", using: :btree
  add_index "books", ["slug"], name: "index_books_on_slug", unique: true, using: :btree
  add_index "books", ["title"], name: "index_books_on_title", unique: true, using: :btree

end
