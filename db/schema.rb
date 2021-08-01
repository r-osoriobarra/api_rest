ActiveRecord::Schema.define(version: 2021_08_01_173516) do

  create_table "ufs", force: :cascade do |t|
    t.datetime "date"
    t.float "uf_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
