# require_relative ("lib/placeholder.rb")
# require_relative ("lib/placeholder.rb")

require "sinatra"
require "sinatra/reloader"
require "imdb"
require_relative ("lib/filter.rb")
require'awesome_print'


get "/" do 
	erb :home_search
end
#======================================
post "/search" do 
search = Imdb::Search.new(params[:Movie_Search])
top20 = search.movies[0..20]
new_game = Game.new(top20)

@movies = new_game.filter #9 movies with both poster and year
@random_year = new_game.random_year ####write a method that returns a random year
erb :search_result

end	

