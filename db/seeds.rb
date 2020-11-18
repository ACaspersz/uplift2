# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
        user = User.new
        user.first_name = Faker::Name.first_name
        user.last_name = Faker::Name.last_name
        user.email = Faker::Internet.email
        user.password = "123456"
        user.password_confirmation = "123456"
        user.street_number = Faker::Address.building_number
        user.street_address = Faker::Address.street_name
        user.suburb = Faker::Address.city
        user.postcode = "1234"
        user.save
    
    


    for user.each do
        business = Business.new
            business.business_name = Faker::FunnyName
            business.region = Faker::Address.city
            business.description = Faker::Lorem.paragraph(sentence_count: rand(2..10)) 
            business.save
        


        for business.each do
            cause = Cause.new
            cause.cause_name = "Door replacing"
            cause.donation_goal = Faker::Number.between(from: 100, to: 50000)
            cause.save 
        end
    end
end