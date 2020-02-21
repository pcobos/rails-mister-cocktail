require 'open-uri'
require 'json'

# Ingredients
# ingredient_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# data = JSON.parse(open(ingredient_url).read)

# data['drinks'].each do |ingredient|
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end

# Cocktails

cocktail_url = 'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita'
cocktail_data = JSON.parse(open(cocktail_url).read)

cocktail_data['drinks'].each do |cocktail|
  Cocktail.create!(name: cocktail["strDrink"])
end
