# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
results = JSON.parse(open(url).read)

Cocktail.destroy_all
Ingredient.destroy_all

puts 'starting seeds'

results["drinks"].each do |result|
  Ingredient.create(name: result["strIngredient1"])
end

15.times do
  Cocktail.create(name: 'test', photo: image_tag('laranja.png'))
end
# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

puts 'finished seeds'
