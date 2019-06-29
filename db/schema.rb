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

ActiveRecord::Schema.define(version: 2019_06_29_114246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blog_post_locals", force: :cascade do |t|
    t.string "title"
    t.text "abstract"
    t.string "image"
    t.bigint "remote_id"
    t.datetime "published_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url"
  end

  create_table "career_snapshots", force: :cascade do |t|
    t.string "company_name"
    t.date "date_of_joining"
    t.date "date_of_resignation"
    t.string "location"
    t.string "designation"
    t.string "logo"
    t.bigint "order"
    t.boolean "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configs", force: :cascade do |t|
    t.string "config_type", null: false
    t.json "settings", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "education_snapshots", force: :cascade do |t|
    t.date "date_of_graduation"
    t.string "course"
    t.string "institution"
    t.string "location"
    t.boolean "show"
    t.bigint "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.text "text"
    t.boolean "is_spam"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "url"
    t.boolean "show"
    t.bigint "order"
    t.bigint "importance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "icon"
    t.string "title"
    t.text "description"
    t.bigint "order"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.float "proficiency"
    t.integer "weight"
    t.string "color"
    t.boolean "show"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "author"
    t.string "author_designation"
    t.string "author_employer"
    t.string "author_image"
    t.text "content"
    t.boolean "is_visible"
    t.bigint "ordinal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
