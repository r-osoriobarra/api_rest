ActiveRecord::Schema.define(version: 2021_08_01_210300) do

  create_table "ufs", force: :cascade do |t|
    t.datetime "date"
    t.float "uf_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "login_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
