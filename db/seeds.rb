# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all

7.times do 
  city = City.create!(city_name: Faker::Nation.unique.capital_city)
  dog = Dog.create!(name: Faker::Name.unique.name, city: city)
  dogsitter = Dogsitter.create!(name: Faker::Name.unique.name, city: city)
  stroll = Stroll.create(dog: dog, dogsitter: dogsitter)
end   
