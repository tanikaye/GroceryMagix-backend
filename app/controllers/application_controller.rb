require 'pry'


class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  # get "https://api.edamam.com/api/recipes/v2?type=public&q=pasta&app_id=cb497740&app_key=5230ca56100a7c424dbcd724d88fd3d8" do
  #   recipes = Recipe.all
  #   recipes.to_json
  # end

  get '/' do
    "Hello World"
  end

  post '/recipes' do
    recipe = Recipe.create(
      name: params[:name],
    )
    recipe.to_json
  end

end
