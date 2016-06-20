class Board 
	def initialize 
		@pieces_array = [nil, [], [], [], [], [], [], [], []]
	end

	def add_pieces (piece)
		x = piece.x
		y = piece.y
		@pieces_array [x][y] = piece
	end

	def can_move? (x, y, final_x, final_y)
		if final_x > 8 || final_x < 1 || final_y > 8 || final_y < 1
			false
		else 
			
		piece = @pieces_array [x][y]

		if piece == nil 
			false
		elsif x == final_x && y == final_y
			false
		elsif piece.can_move?(final_x, final_y)
			true
		else
			false
		end
	end

end 