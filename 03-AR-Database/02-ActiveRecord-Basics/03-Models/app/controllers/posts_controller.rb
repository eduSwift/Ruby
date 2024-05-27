require_relative "../views/posts_view"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    display_posts
  end

  def create
    title = @view.ask_for(:title)
    url = @view.ask_for(:url)
    post = Post.new(title: title, url: url, votes: 0)
    post.save
    display_posts
  end

  def update
    display_posts
    id = @view.ask_for(:id).to_i
    title = @view.ask_for(:title)
    url = @view.ask_for(:url)
    post = Post.find(id)
    post.title = title
    post.url = url
    post.save
    display_posts
  end

  def destroy
    display_posts
    id = @view.ask_for(:id).to_i
    post = Post.find(id)
    post.destroy
    display_posts
  end

  def upvote
    display_posts
    id = @view.ask_for(:id).to_i
    post = Post.find(id)
    post.votes += 1
    post.save
    display_posts
  end

  private

  def display_posts
    posts = Post.all
    @view.display(posts)
  end
end
