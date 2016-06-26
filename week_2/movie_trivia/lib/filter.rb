require "imdb"

class Game
	attr_reader :array
	
	def initialize(array)
		@array = array #20 movie objects
	end 


	def filter
		filtered = @array.select {|movie| (movie.poster != nil) && (movie.year != nil)} 
		@array = filtered[0..8]
	end

	def random_year
		years_array = []
		@array.each {|movie| years_array.push(movie.year)}
		i = rand(0..8)
		years_array[i]
	end

end