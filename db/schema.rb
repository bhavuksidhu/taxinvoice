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

ActiveRecord::Schema.define(version: 20190412113116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "goods_details", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "invoice_id"
    t.string "goods_desc"
    t.string "hsn_acs_code"
    t.float "quantity"
    t.float "rate"
    t.float "taxable_value"
    t.float "cartage"
    t.float "cgst"
    t.float "sgst"
    t.float "igst"
    t.float "invoice_total"
  end

  create_table "invoices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "buyer_name"
    t.string "buyer_address"
    t.string "buyer_gstin_no"
    t.string "transportation_mode"
    t.string "vehicle_no"
    t.datetime "supply_date_time"
    t.string "supply_place"
    t.float "total_taxable_value"
    t.float "cgst"
    t.float "tot_cgst"
    t.float "sgst"
    t.float "tot_sgst"
    t.float "igst"
    t.float "tot_igst"
    t.float "cartage"
    t.float "invoice_total"
    t.string "invoice_no"
    t.string "state"
    t.datetime "invoice_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
