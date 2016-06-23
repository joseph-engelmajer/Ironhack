class Blog
	attr_accessor :posts
  def initialize
    @posts = []
  end

  def add_post(new_post)
    @posts.push(new_post)
  end
end