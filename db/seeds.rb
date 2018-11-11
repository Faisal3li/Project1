# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
faisal = User.find_by(email: "alqahtanifam@gmail.com")
first_post = Post.create(post_title: "first post", post_text: "this is a post body", user_id: faisal.id)
second_post = Post.create(post_title: "second post", post_text: "this is a post body", user_id: faisal.id)
third_post = Post.create(post_title: "third post", post_text: "this is a post body", user_id: faisal.id)
fourth_post = Post.create(post_title: "fourth post", post_text: "this is a post body", user_id: faisal.id)