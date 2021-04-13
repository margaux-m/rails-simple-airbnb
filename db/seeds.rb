# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating flats...'
4.times do
  flat = Flat.new(
    name:             Faker::Beer.name,
    address:          Faker::Address.full_address,
    description:      Faker::Lorem.sentence,
    price_per_night:  rand(30..150),
    number_of_guests: rand(1..12)
  )
  flat.save!
end
puts 'Finished!'
