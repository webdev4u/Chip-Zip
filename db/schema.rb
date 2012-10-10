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

ActiveRecord::Schema.define(:version => 20121010112157) do

  create_table "categories", :force => true do |t|
    t.integer  "parent",                  :default => 0,    :null => false
    t.string   "link",                                      :null => false
    t.string   "name",                                      :null => false
    t.integer  "menu_order", :limit => 1,                   :null => false
    t.boolean  "show",                    :default => true, :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "categories", ["link"], :name => "index_categories_on_link", :unique => true
  add_index "categories", ["name"], :name => "index_categories_on_name", :unique => true
  add_index "categories", ["show"], :name => "index_categories_on_show"

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.text     "content",    :limit => 16777215
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

end
