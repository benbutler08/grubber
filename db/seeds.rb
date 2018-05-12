# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email: "bbutler@example.com", username: "bbutler", city: "Charlotte", password: 'asdf123', password_confirmation: 'asdf123')
user.avatar = Rails.root.join("db/images/ben_butler.jpg").open
user.save!
user = User.create!(email: "gjaros@example.com", username: "gjaros", city: "Charlotte", password: 'asdf123', password_confirmation: 'asdf123')
user.avatar = Rails.root.join("db/images/greg_jaros.jpg").open
user.save!
user = User.create!(email: "ctran@example.com", username: "ctran", city: "Charlotte", password: 'asdf123', password_confirmation: 'asdf123')
user.avatar = Rails.root.join("db/images/chris_tran.jpg").open
user.save!

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

99.times do |n|
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  city = "Charlotte"
  user = User.create!(email: email, username: Faker::Name.name, city: city, password: password, password_confirmation: password)
  user.avatar = Rails.root.join("db/images/blank.jpg").open
  user.save!
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
