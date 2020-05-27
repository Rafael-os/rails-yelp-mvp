# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
restaurant_a = { name: "restaurant_a", address: "Rua 1", phone_number: "33333333", category: "japanese" }
restaurant_b = { name: "restaurant_b", address: "Rua 2", phone_number: "33333333", category: "japanese" }
restaurant_c = { name: "restaurant_c", address: "Rua 3", phone_number: "33333333", category: "japanese" }
restaurant_d = { name: "restaurant_d", address: "Rua 4", phone_number: "33333333", category: "japanese" }
restaurant_e = { name: "restaurant_e", address: "Rua 5", phone_number: "33333333", category: "japanese" }

[ restaurant_a, restaurant_b, restaurant_c, restaurant_d, restaurant_e].each do |at|
  restaurant = Restaurant.create!(at)
  puts "Created #{restaurant.name}"
end