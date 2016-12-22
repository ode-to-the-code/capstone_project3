# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(name: "Jad", email: "jad@email.com", password: "password")
deed = Deed.create(description: "Filling a pothole")
subscription = Subscription.create(user_id: user.id, deed_id: deed.id, points: 0)

# need to watch the seed file video, create mutliple users and deeds and subs
# so you can see, when you start the app, that certain users are connected to certain deeds. so we can test the associations. 