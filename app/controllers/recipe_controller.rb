class RecipeController < Sinatra::Base

  post '/recipes' do
    recipe = Recipe.create(
      {name:params[:name]},
    )
    recipe.to_json
  end

end