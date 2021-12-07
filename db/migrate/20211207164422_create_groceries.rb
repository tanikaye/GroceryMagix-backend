class CreateGroceries < ActiveRecord::Migration[6.1]
  def change
    create_table :groceries do |t|
      t.string :ingredient_name
      t.string :ingredient_type
      t.string :measurements
      t.integer :amount
      t.string :recipe_img
      t.string :recipe_name
  end
end

# each instance is an ingredient. this table is linked to a dish in recipe list.
# its a table listing all the ingredients in each dish.
