# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning up database"
Flat.destroy_all
puts "database clean"
puts "create flats"

20.times do
  Flat.create(
    name: Faker::Address.street_name,
    address: Faker::Address.street_address,
    description: Faker::Hipster.sentence,
    price_per_night: rand(15..99),
    number_of_guests: rand(1..10),
  )
end
puts "done"
