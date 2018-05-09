# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'ben@example.com', username: 'SuperUserBen',password: 'asdf123', password_confirmation: 'asdf123')
Restaurant.create(name: 'Bankers Hill', location: 'San Diego, CA')
Restaurant.create(name: 'Eats', location: 'Providence, RI')
Restaurant.create(name: 'Amelies', location: 'Charlotte, NC')
Rating.create(title: 'test rating', score: 4, description: 'I went here and it was good', restaurant_id: 1, user_id: 1)

99.times do |n|
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(email: email, username: Faker::Name.name, password: password, password_confirmation: password)
end

# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }
