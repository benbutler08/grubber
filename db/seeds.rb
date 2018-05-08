# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'ben@example.com', password: 'asdf123', password_confirmation: 'asdf123')
Restaurant.create(name: 'Bankers Hill', location: 'San Diego, CA')
Restaurant.create(name: 'Eats', location: 'Providence, RI')
Restaurant.create(name: 'Amelies', location: 'Charlotte, NC')
Rating.create(title: 'test rating', score: 4, description: 'I went here and it was good', restaurant_id: 1, user_id: 1)
