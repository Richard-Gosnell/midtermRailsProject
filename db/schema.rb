# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_24_161652) do

  create_table "images", force: :cascade do |t|
    t.string "file_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "ptype_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_pokemons_on_name"
    t.index ["ptype_id"], name: "index_pokemons_on_ptype_id"
  end

  create_table "ptypes", force: :cascade do |t|
    t.string "ptype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ptype"], name: "index_ptypes_on_ptype"
  end

  create_table "stats", force: :cascade do |t|
    t.integer "hp"
    t.integer "attack"
    t.integer "defense"
    t.integer "sp_attack"
    t.integer "sp_defence"
    t.integer "speed"
    t.integer "name_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name_id"], name: "index_stats_on_name_id"
  end

  add_foreign_key "pokemons", "ptypes"
  add_foreign_key "stats", "names"
end
