require "faker"
100.times do |i|
  Post.create(faker::Movie.actor)
end
# TODO: Write a seed to insert 100 posts in the database
Post.create(title: "My first post", url: "https://www.blog.com/my-first-post", votes: 13)
Post.create(title: "My second post", url: "https://www.blog.com/my-second-post", votes: 42)
Post.create(title: "My third post", url: "https://www.blog.com/my-third-post", votes: 128)

10.times do |i|
  Post.create(title: "My post number #{i}")
end


