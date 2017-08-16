# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: "Der Imbiss",
    address: "Berlin",
    phone_number: "9475 884 484",
    category: "italian"
  },
  {
    name: "Jamie's Italian",
    address: "London",
    phone_number: "8474 5858",
    category: "italian"
  },
  {
    name: "Gordon Ramsey's Savoy",
    address: "London",
    phone_number: "83473857",
    category: "french"
  },
  {
    name: "King King",
    address: "Berlin",
    phone_number: "497473",
    category: "japanese"
  },
  {
    name: "Dim Sum Sum",
    address: "Paris",
    phone_number: "39757500",
    category: "chinese"
  }
]

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
