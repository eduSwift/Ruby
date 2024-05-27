class PostsView
  def display(posts)
    posts.each do |post|
      puts "#{post.title} #{post.url} #{post.votes}"
    end
  end

  def ask_for(stuff)
    puts "#{stuff}?"
    print ">"
    gets.chomp
  end
end
