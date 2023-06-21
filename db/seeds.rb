# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.create(email: 'samara@moesko.com', password: 'password', password_confirmation: 'password')

30.times do |x|
  Post.create(
    title: Faker::TvShows::BigBangTheory.character,
    body: Faker::TvShows::BigBangTheory.quote,
    views: 0,
    user_id: rand(1..3),
  )
  sleep(0.5)
end