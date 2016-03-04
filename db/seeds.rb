# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
    )
end

10.times do
  sleep(1)
  StatusUpdate.create!(
    user_id: (1..5).to_a.sample,
    body: Faker::Lorem.sentence
    )
end



