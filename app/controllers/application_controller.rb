class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  # get "https://api.edamam.com/api/recipes/v2?type=public&q=pasta&app_id=cb497740&app_key=5230ca56100a7c424dbcd724d88fd3d8" do
  #   recipes = Recipe.all
  #   recipes.to_json
  # end

  get "/users" do
    users = User.all
    users.to_json
  end

  post '/recipes' do
    recipe = Recipe.create(
      {name:params[:name]},
    )
    recipe.to_json
  end

  post '/users' do
    new_user = User.create(
      name: params[:name]
  )
    new_user.to_json
  end

  get "/users/:id" do
    user=User.find(params[:id])
    user.to_json(include: { shopping_trips: { include: :recipe } })
  end

  post "/users/:id" do
    user=User.find(params[:id])
    newRecipe=Recipe.create(
      title: params[:title],
      url: params[:url],
      servings: params[:servings],
      ingredients: params[:ingredients],
      user_id: params[:user_id],
      shopping_trip_id: params[:shopping_trip_id]
  )
      newRecipe.to_json
  end

end
