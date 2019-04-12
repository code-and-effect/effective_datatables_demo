# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  User.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    city: Faker::Address.city
  )
end

users = User.all.to_a

100.times do
  draft = [true, false].sample
  published_at = Time.zone.now.advance(days: -1.upto(300).to_a.sample, hours: 10.upto(20).to_a.sample) if draft

  Post.create!(
    title: Faker::Quote.famous_last_words, 
    description: Faker::Quote.matz, 
    score: 1.upto(100).to_a.sample,
    draft: draft, 
    published_at: published_at,
    user: users.sample,
  )
end
