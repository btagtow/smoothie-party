# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
SmoothieIngredient.destroy_all
Smoothie.destroy_all
Ingredient.destroy_all


smoothie1 = Smoothie.create(name: "Tropical", size: 16)
smoothie2 = Smoothie.create(name: "Pina Colada", size: 24)

ingredient1 = Ingredient.create(name: "Strawberry", stock: 50)
ingredient2 = Ingredient.create(name: "Blueberry", stock: 30)
ingredient3 = Ingredient.create(name: "Pineapple", stock: 5)
ingredient4 = Ingredient.create(name: "Yogurt", stock: 17)

smoothieingredient1 = SmoothieIngredient.create(quantity: 5, smoothie: smoothie1, ingredient: ingredient1)
smoothieingredient2 = SmoothieIngredient.create(quantity: 4, smoothie: smoothie2, ingredient: ingredient2)
smoothieingredient3 = SmoothieIngredient.create(quantity: 10, smoothie: smoothie1, ingredient: ingredient4)
smoothieingredient4 = SmoothieIngredient.create(quantity: 500, smoothie: smoothie1, ingredient: ingredient3)

smoothie1.ingredients << ingredient2

smoothie1.ingredients.create(name: "Ice", stock: 20)
