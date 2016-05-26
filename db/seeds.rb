# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: "mike@mike.mike", password: "likesbikes")

5.times do
  User.create!(
      email: Faker::StarWars.character + "@gmail.com",
      password: "password"
    )
end

counter = 1
5.times do
  Reviewer.create!(user_id: counter, group_id: 1)
  counter += 1
end


  Movie.create!(
      title: "The Little Mermaid",
      body: Faker::Hipster.sentence,
      poster_image: "http://ia.media-imdb.com/images/M/MV5BNTAxMzY0MjI1Nl5BMl5BanBnXkFtZTgwMTU2NTYxMTE@._V1_UY1200_CR89,0,630,1200_AL_.jpg"
    )


Movie.create!(
    title: "Like Mike",
    body: Faker::Hipster.sentence,
    poster_image: "http://vignette3.wikia.nocookie.net/filmguide/images/8/8c/Like_Mike.jpg/revision/latest?cb=20150907213925"
  )


Movie.create!(
    title: "Magic Mike",
    body: Faker::Hipster.sentence,
    poster_image: "http://paradiseofpaonia.com/wp-content/uploads/2015/06/magic-mike-poster.jpg"
  )


Movie.create!(
    title: "Mikey",
    body: Faker::Hipster.sentence,
    poster_image: "https://upload.wikimedia.org/wikipedia/en/3/3c/Mikey_%28Film%29.jpg"
  )


Group.create!(group_name: "Mikes Favorites")
GroupReview.create!(group_id: 1, movie_id: 1, due_date: "2012-10-31")

Group.create!(group_name: "Five guys named Mike")
GroupReview.create!(group_id: 2, movie_id: 2, due_date: "1990-10-31")

Group.create!(group_name: "MikesWithBikes")
GroupReview.create!(group_id: 3, movie_id: 4, due_date: "1995-10-31")

Group.create!(group_name: "Movie Mikes")
GroupReview.create!(group_id: 4, movie_id: 3, due_date: "2016-10-31")



counter = 1
5.times do
  Review.create!(
    title: "A Film to Cherish",
    body: "I love this move. This move rules. I love this move. This move rules.I love this move. This move rules.I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules.",
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

counter = 1
5.times do
  Review.create!(
    title: "Review Title",
    body: "Review Body",
    user_id: counter,
    group_review_id: 2,
    cinematography_score: rand(6),
    score_score: rand(6),
    cast_score: rand(6),
    direction_score: rand(6),
    overall_score: rand(21)
  )
  counter += 1
end

counter = 1
5.times do
  Review.create!(
    title: "Review Title",
    body: "Review Body",
    user_id: counter,
    group_review_id: 3,
    cinematography_score: rand(6),
    score_score: rand(6),
    cast_score: rand(6),
    direction_score: rand(6),
    overall_score: rand(21)
  )
  counter += 1
end

counter = 1
5.times do
  Review.create!(
    title: "Review Title",
    body: "Review Body",
    user_id: counter,
    group_review_id: 4,
    cinematography_score: rand(6),
    score_score: rand(6),
    cast_score: rand(6),
    direction_score: rand(6),
    overall_score: rand(21)
  )
  counter += 1
end
