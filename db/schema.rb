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

ActiveRecord::Schema.define(version: 20161116042301) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "help_centers", force: :cascade do |t|
    t.string    "type"
    t.string    "name"
    t.string    "address"
    t.string    "address1"
    t.string    "city"
    t.string    "state"
    t.string    "phone_number"
    t.string    "email"
    t.string    "donate_url"
    t.geography "lonlat",       limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.datetime  "created_at",                                                            null: false
    t.datetime  "updated_at",                                                            null: false
    t.index ["lonlat"], name: "index_help_centers_on_lonlat", using: :gist
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "city"
    t.string   "state"
    t.string   "speciality"
    t.string   "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
