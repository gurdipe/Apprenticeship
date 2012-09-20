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

ActiveRecord::Schema.define(:version => 20120919124437) do

  create_table "apprenticeship_types", :force => true do |t|
    t.string   "apprenticeship_type"
    t.text     "description"
    t.string   "job_role"
    t.string   "qualification"
    t.string   "salary"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "sector_id"
  end

  create_table "articles", :force => true do |t|
    t.integer  "type_id"
    t.string   "title"
    t.text     "small_content"
    t.text     "full_content"
    t.text     "article_type"
    t.integer  "discipline_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "redactor_assets", :force => true do |t|
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

  add_index "redactor_assets", ["assetable_type", "assetable_id"], :name => "idx_redactor_assetable"
  add_index "redactor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_redactor_assetable_type"

  create_table "sectors", :force => true do |t|
    t.string   "title"
    t.string   "small_image"
    t.string   "app_types_image"
    t.text     "sector_description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "types_of_apprenticeships", :force => true do |t|
    t.string   "sector"
    t.string   "app_type"
    t.string   "small_icon"
    t.string   "sector_image"
    t.string   "job_roles"
    t.string   "salary"
    t.string   "quals"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
