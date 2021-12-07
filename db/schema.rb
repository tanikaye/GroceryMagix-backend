ActiveRecord::Schema.define(version: 2021_12_07_163411) do

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "servings"
    t.string "ingredients"
    t.integer "user_id"
  end

  create_table "shopping_trips", force: :cascade do |t|
    t.string "ingredient_name"
    t.string "ingredient_type"
    t.string "measurements"
    t.integer "amount"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
