class CreateShoppingTrip < ActiveRecord::Migration[6.1]
  def change
    create_table :shopping_trips do |t|
      t.string :ingredient_name
      t.string :ingredient_type
      t.string :measurements
      t.integer :amount
      t.integer :user_id
  end
end

# each instance is a shopping trip, like thanksgiving dinner. Each
