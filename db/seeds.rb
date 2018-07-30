require 'json'
require 'open-uri'

puts "#{Ingredient.count} ingredients in database"
puts "Generating seeds..."
open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list") do |response|
  response.each do |string|
    result = JSON.parse(string)
    result["drinks"].each do |e|
      Ingredient.create!(name: e["strIngredient1"])
    end
  end
end

puts "#{Ingredient.count} ingredients in database"
