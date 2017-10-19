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

ActiveRecord::Schema.define(version: 20171001153106) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "cnpj"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "score"
    t.decimal "monthly_score"
  end

  create_table "inspections", force: :cascade do |t|
    t.integer "project_id"
    t.string "status"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "overdue_projects", force: :cascade do |t|
    t.integer "simec_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "simec_id"
    t.string "name"
    t.string "status"
    t.string "city"
    t.string "state"
    t.string "postal_code"
    t.string "address"
    t.string "term"
    t.string "term_end"
    t.string "term_status"
    t.string "percentual"
    t.date "expected_date"
    t.string "education_date"
    t.string "project_type"
    t.string "build_type"
    t.string "project_classification"
    t.decimal "value_by_fnde"
    t.string "education_network"
    t.string "cnpj"
    t.string "state_registration"
    t.string "entity_name"
    t.string "social_name"
    t.string "email"
    t.string "abbreviation"
    t.string "comercial_phone"
    t.string "cep"
    t.string "address_entity"
    t.string "entity_complement"
    t.string "entity_number"
    t.string "entity_neighborhood"
    t.string "entity_state"
    t.string "bidding_modality"
    t.string "bidding_number"
    t.string "bidding_approval"
    t.string "company"
    t.string "company_id"
    t.datetime "contract_signed_at"
    t.string "deadline"
    t.datetime "contract_end"
    t.decimal "contract_value"
    t.string "inspection_status"
    t.decimal "amount_paid"
    t.decimal "percentual_paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
