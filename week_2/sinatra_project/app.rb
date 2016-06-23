require "sinatra"
require "sinatra/reloader"
require "pry"

enable(:sessions)

get "/"  do
	erb(:home)	
end

get "/hi" do
	@name = "JoJo"

	erb(:hi)
end

get "/party" do 
	erb(:party)
	end

get "/about" do
	erb(:about)
	end

get "/recipe" do
	@name = "Red Velvet Cake"
	@ingredients = [
		"eggs",
		"flour",
		"red food coloring",
		"cocoa",
		"buttermilk",
		"sugar",
	]
	erb(:recipe)
end

users = {
	"khalifenizar" => {:name => "Nizar Khalife", :email => "fjnf@djn.com"},
	"stylesJ" => {:name => "JJ Styles", :email => "jstyles@pimpshit.com"},
	"didleyjon" => {:name => "Jon Didleyon", :email => "gjhfbn@djn.com"}
}

get "/users/:username" do
	@name = params[:username]

	if @name == "sexyjalexy12" || @name == "josh"
		erb(:whisky_time)
	else

		binding.pry 

		@info = users[@name]
	erb (:user_profile)
	end 
end