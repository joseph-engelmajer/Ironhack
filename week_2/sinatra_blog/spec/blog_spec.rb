require_relative ("../lib/blog.rb")
require_relative ("../lib/post.rb")


RSpec.describe Blog do 
	before :each do
		@blog = Blog.new
		@post_1 = Post.new("post1","06/25/16","This post is about cool stuff!")
		@post_2 = Post.new("post2","06/30/16","This post is about boring stuff!")
		@post_3 = Post.new("post3","07/15/16","This post is about weird kinky stuff!")
		@post_4 = Post.new("post4","07/10/16","This post is about cooking stuff!")
		@post_5 = Post.new("post5","08/01/16","This post is about cooking weird kinky stuff!")
	end

describe "#posts" do 
		it "returns an array with the posts added to blog" do 
			@blog.add_post(@post_1)
			@blog.add_post(@post_2)
			@blog.add_post(@post_3)
			expect(@blog.posts.length).to eq(3)
		end
	end
end