require_relative ("lib/blog.rb")
require_relative ("lib/post.rb")

require "sinatra"
require "sinatra/reloader"


blog = Blog.new
		blog.add_post(Post.new("post1",Time.new(2016,6,15),"This post is about cool stuff!", "JoJo", "Category 5 Hurricane"))
		blog.add_post(Post.new("post2",Time.new(2016,6,16),"This post is about boring stuff!", "JoJo", "Category 5 Hurricane"))
		blog.add_post(Post.new("post3",Time.new(2016,7,17),"This post is about weird kinky stuff!", "JoJo", "Category 5 Hurricane"))
		blog.add_post(Post.new("post4",Time.new(2016,7,18),"This post is about cooking stuff!", "JoJo", "Category 5 Hurricane"))
		blog.add_post(Post.new("post5",Time.new(2016,8,02),"This post is about cooking weird kinky stuff!", "JoJo", "Category 5 Hurricane"))

get "/" do 
	@my_blog = blog.latest_posts
	erb :home
	
end

get "/details/:index" do
	index = params[:index].to_i
	array_posts = blog.posts
	@post = array_posts[index]
	erb(:details)
end

get "/new_post" do
  
  erb(:new_post)
end

post "/new_post" do
	title = params[:Title]
  content = params[:post_content]
  author = params[:author]
  category = params[:category]
  date = Time.now
  new_post = Post.new(title, date, content, author, category)
  blog.add_post(new_post)
  redirect "/"
end
