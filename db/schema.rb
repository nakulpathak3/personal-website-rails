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

ActiveRecord::Schema.define(version: 20160222172018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "personal_blog_comments", force: :cascade do |t|
    t.integer  "post_id"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_blog_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "personal_blog_taggings", force: :cascade do |t|
    t.integer "post_id", null: false
    t.integer "tag_id",  null: false
  end

  add_index "personal_blog_taggings", ["tag_id", "post_id"], name: "index_personal_blog_taggings_on_tag_id_and_post_id", unique: true, using: :btree

  create_table "personal_blog_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "personal_blog_taggings", "personal_blog_posts", column: "post_id"
  add_foreign_key "personal_blog_taggings", "personal_blog_tags", column: "tag_id"
end
