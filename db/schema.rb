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

ActiveRecord::Schema.define(version: 2021_09_14_081928) do

  create_table "order_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "order_detail_number"
    t.integer "order_quantity"
    t.timestamp "shipment_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.bigint "shipment_status_id", null: false
    t.index ["order_id"], name: "index_order_details_on_order_id"
    t.index ["shipment_status_id"], name: "index_order_details_on_shipment_status_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.timestamp "order_date"
    t.string "order_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shipment_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "shipment_status_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_classifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "user_classification_name", limit: 32
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "password", limit: 64, null: false
    t.string "last_name", limit: 16, null: false
    t.string "first_name", limit: 16, null: false
    t.string "zipcode", limit: 16
    t.string "prefecture", limit: 16
    t.string "municipality", limit: 16
    t.string "address", limit: 32
    t.string "apartments", limit: 32
    t.string "email", limit: 128
    t.string "phone_number", limit: 16
    t.bigint "user_classification_id", null: false
    t.string "company_name", limit: 128
    t.boolean "delete_flag"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_classification_id"], name: "index_users_on_user_classification_id"
  end

  add_foreign_key "order_details", "orders"
  add_foreign_key "order_details", "shipment_statuses"
  add_foreign_key "users", "user_classifications"
end
