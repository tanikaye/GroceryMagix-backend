class Recipe < ActiveRecord::Base
    belongs_to :user
    belongs_to :shopping_trip
end