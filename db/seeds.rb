# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# user = User.create(name: "Jad", email: "jad@email.com", password: "password")
# user = User.create(name: "Jad", email: "jad@email.com", password: "password")
# user = User.create(name: "Jad", email: "jad@email.com", password: "password")

names = ["test", "admin", "james", "jenine"]
names.each do |name|
  User.create(
    name: name,
    email: "#{name}@gmail.com",
    password: "password"
  )
end 

30.times do 
  max_volunteers = Faker::Number.between(1, 10)
  min_volunteers = Faker::Number.between(1, 3)
  description = Faker::Lorem.sentence
  location = Faker::Address.street_address
  category = Faker::Lorem.word
  max_points = Faker::Number.between(10, 100)

  Deed.create(
    max_volunteers: max_volunteers,
    min_volunteers: min_volunteers,
    description: description,
    location: location,
    category: category,
  )
end

users = User.all
deeds = Deed.all
users.each do |user|
  3.times do
    deed = deeds.sample
    subscription = Subscription.create(
      user_id: user.id,
      deed_id: deed.id,
      points: rand(1..10)
    )
  end
end



puts "hello"

# need to watch the seed file video, create mutliple users and deeds and subs
# so you can see, when you start the app, that certain users are connected to certain deeds. so we can test the associations. 