class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :url
      t.integer :servings
      t.string :ingredients
      t.integer :user_id
      t.integer :shopping_trip_id
    end
  end
end