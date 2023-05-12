# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
#Création des villes OK


#Création des users OK
  user = User.create!(first_name: "Anonymous",
  last_name: Faker::Movies::HarryPotter.character,
  description: Faker::Movies::HarryPotter.quote,
  email: Faker::Internet.email,
  age: 23,
  city: Faker::JapaneseMedia::Naruto.village
)

15.times do
    gossip = Gossip.create!(title: Faker::Movie.title,
    author: Faker::JapaneseMedia::Naruto.character,
    content: Faker::Quote.matz
    )
end


