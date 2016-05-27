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

counter = 1
5.times do
  Reviewer.create!(user_id: counter, group_id: 2)
  counter += 1
end

counter = 1
5.times do
  Reviewer.create!(user_id: counter, group_id: 3)
  counter += 1
end

counter = 1
5.times do
  Reviewer.create!(user_id: counter, group_id: 4)
  counter += 1
end

  Movie.create!(
      title: "The Little Mermaid",
      body: "John Musker and Ron Clements",
      poster_image: "http://www.impawards.com/1989/posters/little_mermaid_ver1.jpg"
    )


Movie.create!(
    title: "Like Mike",
    body: "John Schultz",
    poster_image: "http://www.impawards.com/2002/posters/like_mike_xlg.jpg"
  )


Movie.create!(
    title: "Magic Mike",
    body: "Steven Soderbergh",
    poster_image: "http://paradiseofpaonia.com/wp-content/uploads/2015/06/magic-mike-poster.jpg"
  )


Movie.create!(
    title: "Life with Mikey",
    body: "James Lapine",
    poster_image: "http://www.impawards.com/1993/posters/life_with_mikey.jpg"
  )

Movie.create!(
    title: "Where to Invade Next",
    body: "Michael Moore",
    poster_image: "http://www.ew.com/sites/default/files/i/2015/12/04/michael-moore-02.jpg"
  )

Group.create!(group_name: "Busch League")
GroupReview.create!(group_id: 1, movie_id: 1, due_date: "2015-10-31")

Group.create!(group_name: "Five guys named Mike")
GroupReview.create!(group_id: 2, movie_id: 2, due_date: "2016-10-1")

Group.create!(group_name: "MikesWithBikes")
GroupReview.create!(group_id: 3, movie_id: 4, due_date: "2016-8-18")

Group.create!(group_name: "Movie Mikes")
GroupReview.create!(group_id: 4, movie_id: 3, due_date: "2015-5-31")

Group.create!(group_name: "mikeoverflow")
GroupReview.create!(group_id: 5, movie_id: 5, due_date: "2016-6-1")

counter = 1
3.times do
  Review.create!(
    title: "A Film to Cherish",
    body: "I love this move. This move rules. I love this move. This move rules.I love this move. This move rules.I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules. I love this move. This move rules.",
    user_id: counter,
    group_review_id: 1,

  )
  counter += 1
end

  Review.create!(
    title: "Like Mike - film of a lifetime!",
    body: "The importance of family is central to Like Mike. Not only do Calvin and his friends want to be part of one, but Calvin can’t understand why Tracey is at odds with his father, and works to bring the two together (How can you have a dad and not talk to him?). Friendship, too, is highly valued. When Calvin and Murph are at odds, Tracey steps in to reunite them (Good friends are hard to come by). Sister Theresa stresses the importance of doing well in school and keeping up with homework. When Tracey wants nothing to do with Calvin, another Knight player befriends him (Take the locker next to mine). And even Tracey comes around and begins hanging out with Calvin and Murph. Gambling proves to be a man’s undoing. Calvin learns to take responsibility for his actions and makes mature decisions about his 'career' by desiring family over fame.",
    user_id: 1,
    group_review_id: 2,
)


counter = 1
  Review.create!(
    title: "A Must See Film",
    body: "Pint-size rap music star Lil Bow Wow shows that he can play ball as well as he raps in this youth-oriented comedy about a young boy whose dream comes true in an unexpected way. Calvin Cambridge (Lil Bow Wow) is a 14-year-old boy, who, since the death of his parents, has been living in an orphanage run by the unpleasantly eccentric Stan Bittleman (Crispin Glover). ",
    user_id: 2,
    group_review_id: 2,
)


counter = 1
4.times do
  Review.create!(
    title: "Review Title",
    body: "Review Body",
    user_id: counter,
    group_review_id: 3,
  )
  counter += 1
end

counter = 1
3.times do
  Review.create!(
    title: "Review Title",
    body: "Review Body",
    user_id: counter,
    group_review_id: 4,
  )
  counter += 1
end

counter = 1
  Review.create!(
    title: "Surprising yet Not",
    body: "It comes billed not as a documentary but a comedy, and the first joke is its hilariously misleading title. You think it anticipates a stern, leftist denunciation of American foreign policy. Instead, Moore tells us the Joint Chiefs of Staff invited him to Washington, DC, to confess that all their wars since “the big one” have been disastrous and ask his advice. He responds by offering himself up as a one-man army who will “invade countries populated by Caucasians whose names I can mostly pronounce, take the things we need from them, and bring them back home to the United States of America.”",
    user_id: counter,
    group_review_id: 5,
  )
  counter += 1

counter = 1
  Review.create!(
    title: "EH",
    body: "There's something undeniably sharp and buoyant about Moore's globe-trotting, grass-is-greener approach that compels indulgence and attention.",
    user_id: counter,
    group_review_id: 4,
  )
  counter += 1

