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

ActiveRecord::Schema[7.0].define(version: 2023_07_19_115335) do
  create_table "recipients", force: :cascade do |t|
    t.string "kolay_ik_id", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.date "birth_date", null: false
    t.date "employment_start_date", null: false
    t.boolean "is_active", null: false
    t.integer "manager_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kolay_ik_id"], name: "index_recipients_on_kolay_ik_id"
    t.index ["manager_id"], name: "index_recipients_on_manager_id"
  end

  add_foreign_key "recipients", "recipients", column: "manager_id"
end
