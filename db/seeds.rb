# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'ben@example.com', password: 'asdf123', password_confirmation: 'asdf123')

restaurant = Restaurant.create!(name: 'Bankers Hill', location: 'San Diego, CA')
restaurant.restaurant_pic = Rails.root.join("db/images/bankers_hill.jpg").open
restaurant.save!
restaurant = Restaurant.create!(name: 'Lemongrass', location: 'Providence, RI')
restaurant.restaurant_pic = Rails.root.join("db/images/lemongrass.jpg").open
restaurant.save!
restaurant = Restaurant.create!(name: 'Amelies', location: 'Charlotte, NC')
restaurant.restaurant_pic = Rails.root.join("db/images/amelies.jpg").open
restaurant.save!


Rating.create(title: 'test rating', score: 4, description: 'I went here and it was good', restaurant_id: 1, user_id: 1)
