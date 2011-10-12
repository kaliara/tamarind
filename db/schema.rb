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

ActiveRecord::Schema.define(:version => 20111012035036) do

  create_table "admins", :force => true do |t|
    t.string   "email"
    t.string   "crypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "session"
  end

  create_table "applicants", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "daytime_phone"
    t.string   "evening_phone"
    t.string   "address_street1"
    t.string   "address_street2"
    t.string   "address_city"
    t.string   "address_state"
    t.string   "address_zipcode"
    t.string   "employer1_name"
    t.string   "employer1_address_street1"
    t.string   "employer1_address_street2"
    t.string   "employer1_address_city"
    t.string   "employer1_address_state"
    t.string   "employer1_address_zipcode"
    t.date     "employer1_start_date"
    t.date     "employer1_end_date"
    t.text     "employer1_notes"
    t.string   "employer2_name"
    t.string   "employer2_address_street1"
    t.string   "employer2_address_street2"
    t.string   "employer2_address_city"
    t.string   "employer2_address_state"
    t.string   "employer2_address_zipcode"
    t.date     "employer2_start_date"
    t.date     "employer2_end_date"
    t.text     "employer2_notes"
    t.string   "employer3_name"
    t.string   "employer3_address_street1"
    t.string   "employer3_address_street2"
    t.string   "employer3_address_city"
    t.string   "employer3_address_state"
    t.string   "employer3_address_zipcode"
    t.date     "employer3_start_date"
    t.date     "employer3_end_date"
    t.text     "employer3_notes"
    t.string   "education_completed"
    t.text     "brag"
    t.boolean  "convicted_of_felony"
    t.string   "position_applying_for"
    t.boolean  "full_time"
    t.integer  "desired_salary"
    t.string   "available_shifts"
    t.date     "available_start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "legal_to_work_in_usa"
    t.string   "reference1_name"
    t.string   "reference1_company"
    t.string   "reference1_relationship"
    t.string   "reference1_contact"
    t.string   "reference2_name"
    t.string   "reference2_company"
    t.string   "reference2_relationship"
    t.string   "reference2_contact"
    t.boolean  "employer1_contactable",       :default => true
    t.boolean  "employer2_contactable",       :default => true
    t.boolean  "employer3_contactable",       :default => true
    t.string   "employer1_no_contact_reason"
    t.string   "employer2_no_contact_reason"
    t.string   "employer3_no_contact_reason"
    t.string   "employer1_position"
    t.string   "employer2_position"
    t.string   "employer3_position"
    t.string   "employer1_phone"
    t.string   "employer2_phone"
    t.string   "employer3_phone"
    t.boolean  "part_time",                   :default => false
  end

  create_table "contents", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.boolean  "published",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "section_id"
    t.string   "name"
    t.text     "description"
    t.decimal  "price",              :precision => 10, :scale => 0
    t.integer  "position"
    t.boolean  "direct_from_london"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.boolean  "viewable",   :default => false
    t.string   "pdf_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "content"
    t.boolean  "published",  :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.integer  "menu_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "show_name",  :default => true
    t.boolean  "hidden"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "two_column", :default => false
  end

  create_table "subscribers", :force => true do |t|
    t.string   "email"
    t.boolean  "subscribed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
