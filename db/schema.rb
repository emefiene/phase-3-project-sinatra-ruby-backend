# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_23_161020) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "time"
    t.datetime "date"
    t.integer "patient_id"
    t.integer "physician_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "age"
    t.string "phone"
    t.string "symptoms"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "image_url"
    t.string "name"
    t.string "specialty"
    t.integer "phone"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comments"
    t.datetime "time"
    t.integer "patient_id"
  end

end
