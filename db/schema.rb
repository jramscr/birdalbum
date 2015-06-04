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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150531113640) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beak_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "birds", force: :cascade do |t|
    t.string   "common_name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "kind_id"
  end

  add_index "birds", ["kind_id"], name: "index_birds_on_kind_id", using: :btree

  create_table "color_by_species", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "color_id"
    t.integer  "species_id"
  end

  add_index "color_by_species", ["color_id"], name: "index_color_by_species_on_color_id", using: :btree
  add_index "color_by_species", ["species_id"], name: "index_color_by_species_on_species_id", using: :btree

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_by_people", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "person_id"
    t.integer  "contact_id"
  end

  add_index "contact_by_people", ["contact_id"], name: "index_contact_by_people_on_contact_id", using: :btree
  add_index "contact_by_people", ["person_id"], name: "index_contact_by_people_on_person_id", using: :btree

  create_table "contact_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "contact_type_id"
  end

  add_index "contacts", ["contact_type_id"], name: "index_contacts_on_contact_type_id", using: :btree

  create_table "families", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "sub_order_id"
  end

  add_index "families", ["sub_order_id"], name: "index_families_on_sub_order_id", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "family_id"
  end

  add_index "genders", ["family_id"], name: "index_genders_on_family_id", using: :btree

  create_table "kinds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "kind_id"
  end

  add_index "orders", ["kind_id"], name: "index_orders_on_kind_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "identification"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "picture_by_beak_types", force: :cascade do |t|
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "picture_id"
    t.integer  "beak_type_id"
  end

  add_index "picture_by_beak_types", ["beak_type_id"], name: "index_picture_by_beak_types_on_beak_type_id", using: :btree
  add_index "picture_by_beak_types", ["picture_id"], name: "index_picture_by_beak_types_on_picture_id", using: :btree

  create_table "picture_by_bird_by_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "picture_id"
    t.integer  "user_id"
    t.integer  "bird_id"
  end

  add_index "picture_by_bird_by_users", ["bird_id"], name: "index_picture_by_bird_by_users_on_bird_id", using: :btree
  add_index "picture_by_bird_by_users", ["picture_id"], name: "index_picture_by_bird_by_users_on_picture_id", using: :btree
  add_index "picture_by_bird_by_users", ["user_id"], name: "index_picture_by_bird_by_users_on_user_id", using: :btree

  create_table "picture_by_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "picture_id"
  end

  add_index "picture_by_users", ["picture_id"], name: "index_picture_by_users_on_picture_id", using: :btree
  add_index "picture_by_users", ["user_id"], name: "index_picture_by_users_on_user_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "url"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quantity_eggs", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "female_size"
    t.string   "male_size"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "gender_id"
    t.integer  "beak_type_id"
    t.integer  "size_id"
    t.integer  "quantity_egg_id"
  end

  add_index "species", ["beak_type_id"], name: "index_species_on_beak_type_id", using: :btree
  add_index "species", ["gender_id"], name: "index_species_on_gender_id", using: :btree
  add_index "species", ["quantity_egg_id"], name: "index_species_on_quantity_egg_id", using: :btree
  add_index "species", ["size_id"], name: "index_species_on_size_id", using: :btree

  create_table "species_by_zones", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "zone_id"
    t.integer  "species_id"
  end

  add_index "species_by_zones", ["species_id"], name: "index_species_by_zones_on_species_id", using: :btree
  add_index "species_by_zones", ["zone_id"], name: "index_species_by_zones_on_zone_id", using: :btree

  create_table "sub_orders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "order_id"
  end

  add_index "sub_orders", ["order_id"], name: "index_sub_orders_on_order_id", using: :btree

  create_table "user_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: ""
    t.string   "encrypted_password",     default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "person_id"
    t.integer  "user_type_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["person_id"], name: "index_users_on_person_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["user_type_id"], name: "index_users_on_user_type_id", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "zones", force: :cascade do |t|
    t.string   "description"
    t.string   "maximum_altitude"
    t.string   "minimum_altitude"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
