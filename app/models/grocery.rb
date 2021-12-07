class Grocery < ActiveRecord::Base
has_many :recipes
has_many :shopping_trips
has_many :users, through: :recipes
has_many :users, through: :shopping_trips
end