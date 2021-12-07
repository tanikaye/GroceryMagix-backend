class User < ActiveRecord::Base
    has_many :shopping_trips
    has_many :recipes
end