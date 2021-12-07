class Recipe < ActiveRecord::Base
has_many: groceries
belongs_to: users
has_many: shopping_trips, through: :groceries
end