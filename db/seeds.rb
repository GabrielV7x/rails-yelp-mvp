# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '57356996', category: 'chinese'}
pizza_east =  {name: "chicken mayo", address: "curepipe", phone_number: '57356985', category: 'italian'}
domino =  {name: "meaty", address: "beau bassin", phone_number: '57356456', category: 'japanese'}
cozy =  {name: "burger", address: "st paul", phone_number: '52556996', category: 'french'}
kfc =  {name: "chicken", address: "rose-hill", phone_number: '52556996', category: 'french'}

[dishoom, pizza_east, domino, cozy, kfc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
