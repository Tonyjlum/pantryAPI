# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(name: "Cart")
Location.create(name: "Pantry One")
Location.create(name: "Pantry Two")
Location.create(name: "Pantry Three")
Location.create(name: "Pantry Four")
Location.create(name: "Pantry Top")
Item.create(name: "Tostitos Chips", quantity: 2, location_id: 2)
Item.create(name: "Bounty Roll", quantity: 6, location_id: 5)



puts "Database Seeded"
