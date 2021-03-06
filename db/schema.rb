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

ActiveRecord::Schema.define(version: 20190328124131) do

  create_table "legislators", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "party"
    t.string   "state"
    t.string   "title"
    t.string   "chamber"
    t.date     "term_start"
    t.date     "term_end"
    t.float    "missed_votes_pct"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "state_id"
    t.string   "date_of_birth"
    t.string   "next_election"
    t.integer  "total_votes"
    t.integer  "missed_votes"
    t.string   "office"
    t.string   "phone"
    t.float    "votes_with_party_pct"
    t.string   "twitter_account"
    t.string   "facebook_account"
    t.string   "youtube_account"
    t.string   "govtrack_id"
    t.string   "votesmart_id"
    t.string   "member_id"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
