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

ActiveRecord::Schema.define(:version => 20121105044724) do

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

  create_table "areas_of_expertises", :force => true do |t|
    t.integer  "provider_id"
    t.integer  "sector_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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

  create_table "case_studies", :force => true do |t|
    t.text     "description"
    t.string   "image"
    t.string   "image_name"
    t.integer  "provider_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "choosing_an_apprenticeships", :force => true do |t|
    t.text     "skills"
    t.text     "travel"
    t.text     "employers"
    t.text     "qualifications"
    t.text     "training"
    t.text     "money"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "employer_influences", :force => true do |t|
    t.integer  "employer_id"
    t.integer  "region_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employer_photos", :force => true do |t|
    t.string   "photo"
    t.text     "caption",     :limit => 255
    t.integer  "employer_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "employer_regions", :force => true do |t|
    t.integer  "employer_id"
    t.integer  "region_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employer_sectors", :force => true do |t|
    t.integer  "employer_id"
    t.integer  "sector_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "employers", :force => true do |t|
    t.string   "employer_name"
    t.string   "logo_image"
    t.string   "logo_image_name"
    t.text     "employer_description"
    t.string   "email_address"
    t.string   "contact_number"
    t.integer  "position",               :default => 1, :null => false
    t.string   "web_address"
    t.text     "case_study_description"
    t.string   "case_study_image"
    t.string   "case_study_image_name"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  create_table "how_to_applies", :force => true do |t|
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "last_updates", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "provider_id"
    t.integer  "region_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "provider_influences", :force => true do |t|
    t.integer  "region_id"
    t.integer  "training_provider_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "provider_sectors", :force => true do |t|
    t.integer  "sector_id"
    t.integer  "training_provider_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "providers", :force => true do |t|
    t.string   "name"
    t.string   "logo_image"
    t.string   "logo_image_name"
    t.text     "provider_description"
    t.string   "email_address"
    t.string   "contact_number"
    t.integer  "position"
    t.string   "web_address"
    t.string   "type"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
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

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sectors", :force => true do |t|
    t.string   "title"
    t.string   "small_image"
    t.string   "app_types_image"
    t.text     "sector_description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "training_providers", :force => true do |t|
    t.string   "provider_name"
    t.string   "region"
    t.string   "logo_image"
    t.text     "provider_description"
    t.string   "email_address"
    t.string   "web_address"
    t.string   "contact_number"
    t.integer  "position",             :default => 1, :null => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
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

  create_table "what_is_an_apprenticeships", :force => true do |t|
    t.text     "description_detail"
    t.text     "what_is_it_like"
    t.text     "why_do_one"
    t.text     "qualifications"
    t.text     "ten_things"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
