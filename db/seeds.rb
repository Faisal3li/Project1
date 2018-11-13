# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
faisal = User.create(email: "faisal@gmail.com", password: "chicken", password_confirmation: "chicken")

PostTag.destroy_all
Post.destroy_all

post = Post.create(post_title: "New Post", post_text: "new post text", user_id: faisal.id, post_type: "Cheff")
Post.create(post_title: "newest post", post_text: "newest text", user_id: faisal.id, post_type: "Trainer")

tags = ["bulk", "tone", "cut", "arms", "biceps", "triceps", "shoulders", "deltoid", "subscapularis", "legs", "hamstrings", "quadriceps", "Back", "Upper-back", "Lower-back", "Chest", "Pectoralis major", "Pectoralis minor"]
tags.each do |t|
  PostTag.create(tag: t)
end

new_post.post_tags << PostTag.find_by(tag: "arms")
