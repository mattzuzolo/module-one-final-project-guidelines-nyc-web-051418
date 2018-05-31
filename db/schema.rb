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

ActiveRecord::Schema.define(version: 2018_05_31_144434) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "culture"
    t.string "born"
    t.string "died"
    t.string "url"
    t.integer "nickname_id"
  end

  create_table "house_members", force: :cascade do |t|
    t.string "sworn_member"
    t.integer "house_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "name"
    t.string "region"
    t.string "coatOfArms"
    t.string "words"
    t.string "currentLord"
  end

  create_table "nicknames", force: :cascade do |t|
    t.string "aliases"
    t.integer "character_id"
  end

end
