# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
5.times do
  User.create!(
      email: Faker::StarWars.character + "@gmail.com",
      password_digest: "password"
    )
end

counter = 1
5.times do
  Reviewer.create!(user_id: counter, group_id: 1)
  counter += 1
end

5.times do
  Movie.create!(
      title: Faker::Beer.name,
      body: Faker::Hipster.sentence,
      poster_image: "https://adsark.com/adpics/56ade9b9025744617772ede47.jpg"
    )
end

Group.create!(group_name: "skippers")
GroupReview.create!(group_id: 1, movie_id: 2, due_date: "1995-10-31")

counter = 1
5.times do
  Review.create!(
    title: Faker::StarWars.droid,
    body: Faker::StarWars.quote,
    user_id: counter,
    group_review_id: 1,
    cinematography_score: rand(6),
    score_score: rand(6),
    cast_score: rand(6),
    direction_score: rand(6),
    overall_score: rand(21)
  )
  counter += 1
end
