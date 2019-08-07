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

ActiveRecord::Schema.define(version: 20190730080046) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "age"
    t.string "marital_status"
    t.string "anything_exciting"
    t.string "long_term"
    t.string "open_anything"
    t.string "short_term"
    t.string "undecided"
    t.string "virtual"
    t.integer "height"
    t.string "hair_color"
    t.string "eye_color"
    t.string "smoker"
    t.string "anything_goes"
    t.string "dominated"
    t.string "dominate"
    t.string "normal"
    t.string "threesome"
    t.string "secret"
    t.string "active"
    t.string "shy"
    t.string "sociable"
    t.string "fun"
    t.string "generous"
    t.string "relaxed"
    t.string "moody"
    t.string "modest"
    t.string "sensitive"
    t.text "photos", default: [], array: true
    t.string "city"
    t.string "username"
    t.string "independent"
    t.string "mature"
    t.string "outgoing"
    t.string "self_confident"
    t.string "cultivated"
    t.string "reliable"
    t.string "spiritual"
    t.string "imaginative"
    t.string "sophisticated"
    t.string "being_blinded"
    t.string "willing_experiment"
    t.string "costume"
    t.string "role_playing"
    t.string "using_sex_toys"
    t.string "unusual_places"
    t.string "being_watched"
    t.string "aerobics"
    t.string "golf"
    t.string "martial_arts"
    t.string "soccer"
    t.string "walking"
    t.string "rugby"
    t.string "swimming"
    t.string "baseball"
    t.string "cycling"
    t.string "running"
    t.string "tennis"
    t.string "weight"
    t.string "basketball"
    t.string "skiing"
    t.string "volleyball"
    t.string "arts"
    t.string "cooking"
    t.string "hiking"
    t.string "networking"
    t.string "video_games"
    t.string "book"
    t.string "dining_out"
    t.string "movies"
    t.string "nightclubs"
    t.string "religion"
    t.string "charity"
    t.string "museum"
    t.string "shopping"
    t.string "wine"
    t.string "coffee"
    t.string "gardening"
    t.string "pets"
    t.string "gender"
    t.string "country"
  end

end
