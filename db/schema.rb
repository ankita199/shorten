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

ActiveRecord::Schema.define(version: 2020_05_03_092240) do

  create_table "urls", force: :cascade do |t|
    t.string "original"
    t.string "shorten"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visit_histories", force: :cascade do |t|
    t.string "ip_address"
    t.string "country"
    t.integer "url_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["url_id"], name: "index_visit_histories_on_url_id"
  end

end
