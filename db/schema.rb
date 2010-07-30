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

ActiveRecord::Schema.define(:version => 20100729234109) do

  create_table "answers", :force => true do |t|
    t.datetime "datetime"
    t.integer  "owner"
    t.integer  "question_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.datetime "datetime"
    t.integer  "owner"
    t.integer  "parent_type"
    t.integer  "parent_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "conversations", :force => true do |t|
    t.datetime "started_at"
    t.datetime "finished_at"
    t.integer  "issue_id"
    t.integer  "moderator"
    t.string   "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.binary   "image"
  end

  create_table "conversations_guides", :id => false, :force => true do |t|
    t.integer "conversation_id"
    t.integer "guide_id"
  end

  create_table "conversations_issues", :id => false, :force => true do |t|
    t.integer "conversation_id"
    t.integer "issue_id"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.datetime "when"
    t.string   "where"
    t.integer  "moderator_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "creator_id"
  end

  create_table "events_guides", :id => false, :force => true do |t|
    t.integer "event_id"
    t.integer "guide_id"
  end

  create_table "issues", :force => true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                               :default => "", :null => false
    t.boolean  "validated"
    t.boolean  "admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password"
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "people", ["email"], :name => "index_people_on_email", :unique => true
  add_index "people", ["reset_password_token"], :name => "index_people_on_reset_password_token", :unique => true

  create_table "questions", :force => true do |t|
    t.datetime "datetime"
    t.integer  "owner"
    t.integer  "askee"
    t.integer  "issue_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ratings", :force => true do |t|
    t.datetime "datetime"
    t.integer  "person_id"
    t.integer  "parent_type"
    t.integer  "parent_id"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
