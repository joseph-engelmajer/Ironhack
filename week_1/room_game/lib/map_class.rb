class Map
	def initialize
		@rooms = []
		@current_room = 0
	end

	def add_room(single_room)
		@rooms.push(single_room)
	end
	def play
		user_input = ""
	while user_input.upcase != @rooms[@current_room].exit 
			@rooms[@current_room].display_description
			user_input = gets.chomp
		end

		@current_room += 1 
		if @current_room != @rooms.length
			play 
		elsif
			puts "You have won the game!"
		end
	end
end