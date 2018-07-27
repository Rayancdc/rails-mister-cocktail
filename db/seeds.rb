# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

puts "#{Ingredient.count} ingredients in database"
open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list") do |response|
  puts "Generating seeds..."
  response.each do |string|
    JSON.parse(string).each do |element|
      Ingredient.create!(name: element["strIngredient1"])
    end
  end
end

puts "#{Ingredient.count} ingredients in database"


# [0].each do |result|
#         Ingredient.create!(name: result["strIngredient1"])
#       end
