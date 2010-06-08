# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100608011202) do

  create_table "free_reports", :force => true do |t|
    t.boolean  "confirmation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "postcode_id"
  end

  create_table "postcodes", :force => true do |t|
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "select_products", :force => true do |t|
    t.string   "product"
    t.string   "timeframe"
    t.integer  "postcode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_details", :force => true do |t|
    t.string   "quote_type"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "street_address"
    t.string   "suburb"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.integer  "postcode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_surveys", :force => true do |t|
    t.string   "roof_type"
    t.string   "meterage_ok_solar_power"
    t.string   "meterage_ok_solar_hot_water"
    t.string   "approximate_roof_slope"
    t.string   "percentage_shade_on_north_facing_roof"
    t.integer  "house_stories"
    t.string   "unique_features"
    t.integer  "postcode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sizings", :force => true do |t|
    t.integer  "number_of_people_in_home"
    t.string   "current_hw_type"
    t.string   "current_hw_size"
    t.string   "current_hw_location"
    t.decimal  "last_quarter_elec_bill"
    t.string   "preferred_solar_power_size"
    t.integer  "postcode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "supplier_areas", :force => true do |t|
    t.string   "postcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "abn"
    t.string   "phone"
    t.string   "email"
    t.string   "suburb"
    t.string   "state"
    t.string   "country"
    t.boolean  "active"
    t.string   "postcodes_requested"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
