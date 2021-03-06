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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 201309250221) do

  create_table "admins", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.text     "password_confirmation"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "comment_votes", :force => true do |t|
    t.integer "user_id"
    t.integer "comment_id"
  end

  create_table "comments", :force => true do |t|
    t.text     "text"
    t.integer  "post_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "comment_votes_id"
  end

  create_table "post_votes", :force => true do |t|
    t.integer "user_id"
    t.integer "post_id"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "user_id"
    t.integer  "category_id"
    t.integer  "tags_id"
    t.integer  "comments_id"
    t.integer  "post_votes_id"
  end

  create_table "tags", :force => true do |t|
    t.string  "name"
    t.integer "post_id"
  end

  create_table "users", :force => true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "password"
    t.string  "handle"
    t.integer "comments_id"
    t.text    "password_confirmation"
  end

end
