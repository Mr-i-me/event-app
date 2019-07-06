# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# 5.times do |i|
#   i.Event.create([{title: Faker::Artist.name,
#    i.description: Faker::Marketing.buzzwords,
#    i.tickets: Faker::Number.within(25..250)
#     }])
#   end

 user = User.new(email: "bob@sponge.com", password: "patrickstar")
puts "***************CREATING*******USER***************"
 user.save
