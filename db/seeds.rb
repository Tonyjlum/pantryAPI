# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.create(name: "Bird house")
Item.create(
  name: "Sunflower seeds",
  quantity: 10,
  note:"Seed testing",
  location_id: 1
 )
 Item.create(
   name: "Pumpkin seeds",
   quantity: 7,
   note:"Seed testing again",
   location_id: 1
  )
puts "Database Seeded"
