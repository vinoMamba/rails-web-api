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

ActiveRecord::Schema.define(version: 2021_07_12_142346) do

  create_table "reservations", force: :cascade do |t|
    t.string "booking_code"
    t.integer "train_id"
    t.string "seat_number"
    t.integer "user_id"
    t.string "customer_name"
    t.string "customer_phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["booking_code"], name: "index_reservations_on_booking_code"
    t.index ["seat_number"], name: "index_reservations_on_seat_number"
    t.index ["train_id"], name: "index_reservations_on_train_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["number"], name: "index_trains_on_number"
  end

end
