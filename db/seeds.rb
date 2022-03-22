# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create(name: 'User 1', email: 'user1@test.com', password: '1234567', password_confirmation: '1234567')
food_1 = Food.create(name: 'Apple', measurement_unit: 'grams', price: '5', user: user_1)
food_2 = Food.create(name: 'Pineapple', measurement_unit: 'grams', price: '1', user: user_1)
food_3 = Food.create(name: 'Chicken breasts', measurement_unit: 'units', price: '2', user: user_1)