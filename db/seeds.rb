# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create(name: 'User 1', email: 'user1@test.com', password: '1234567', password_confirmation: '1234567')
user_2 = User.create(name: 'User 2', email: 'user2@test.com', password: '1234567', password_confirmation: '1234567')

# Recipe Seeds

recipe_1 = Recipe.create(name: 'Recipe 1', preparation_time: 45, cooking_time: 30, description: 'This is a description', public: true, user: user_1)
recipe_2 = Recipe.create(name: 'Recipe 2', preparation_time: 85, cooking_time: 60, description: 'This is a description', public: true, user: user_1)
recipe_3 = Recipe.create(name: 'Recipe 3', preparation_time: 15, cooking_time: 10, description: 'This is a description', public: true, user: user_1)
recipe_4 = Recipe.create(name: 'Recipe 4', preparation_time: 95, cooking_time: 65, description: 'This is a description', public: true, user: user_2)
recipe_5 = Recipe.create(name: 'Recipe 5', preparation_time: 75, cooking_time: 60, description: 'This is a description', public: true, user: user_2)
recipe_6 = Recipe.create(name: 'Recipe 6', preparation_time: 60, cooking_time: 35, description: 'This is a description', public: true, user: user_1)


# Inventories
Inventory.create(name: 'Inventory 1', user_id: 1)
Inventory.create(name: 'Inventory 2', user_id: 1)
Inventory.create(name: 'Inventory 3', user_id: 1)

# Foods
food_1 = Food.create(name: 'Apple', measurement_unit: 'grams', price: '5', user: user_1)
food_2 = Food.create(name: 'Pineapple', measurement_unit: 'grams', price: '1', user: user_1)
food_3 = Food.create(name: 'Chicken breasts', measurement_unit: 'units', price: '2', user: user_1)
