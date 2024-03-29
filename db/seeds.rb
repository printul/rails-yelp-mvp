# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
REVIEWS = ["great", "rubbish", "won't go there again", "I want to live there"]

Restaurant.destroy_all

10.times do |restaurant|
  restaurant = Restaurant.create({ name: Faker::Ancient.primordial, address: Faker::Address.street_name, phone_number: Faker::PhoneNumber.phone_number, category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample })
  3.times do
    Review.create({ content: REVIEWS.sample, rating: (0..5).to_a.sample, restaurant_id: restaurant.id })
  end
end
