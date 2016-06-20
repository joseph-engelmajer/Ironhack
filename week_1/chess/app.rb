
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

black_rook_right = Rook.new(8, 8, "black")

puts "Rook Tests"
p black_rook_right.can_move?(8, 5) == true   # Vertical movement
p black_rook_right.can_move?(4, 8) == true   # Horizontal movement
p black_rook_right.can_move?(5, 5) == false  # Diagonal movement (invalid)
p black_rook_right.can_move?(3, 6) == false  # Side diagonal movement? (invalid)


puts ""

black_king = King.new(5, 8, "black")

puts "King Tests"
p black_king.can_move?(5, 7) == true   # Forward movement
p black_king.can_move?(6, 7) == true   # Diagonal movement
p black_king.can_move?(5, 4) == false
p black_king.can_move?(7, 5) == false

puts ""

black_bishop = Bishop.new(6, 8, "black")

puts "Bishop Tests"
p black_bishop.can_move?(3, 5) == true   # Diagonal movement
p black_bishop.can_move?(8, 6) == true   # Diagonal movement
p black_bishop.can_move?(4, 8) == false  # Horizontal movement
p black_bishop.can_move?(5, 4) == false	 # Vertical with one shift left movement 

puts ""

black_knight = Knight.new(2, 8, "black")

puts "Knight Tests"
p black_knight.can_move?(1, 6) == true   # Diagonal movement
p black_knight.can_move?(3, 6) == true   # Diagonal movement
p black_knight.can_move?(4, 7) == true   # Diagonal movement
p black_knight.can_move?(4, 8) == false  # Horizontal movement
p black_knight.can_move?(2, 5) == false	 # Vertical movement 

puts ""

black_queen = Queen.new(4, 8, "black")

puts "Queen Tests"
p black_queen.can_move?(2, 8) == true   # Diagonal movement
p black_queen.can_move?(1, 5) == true   # Diagonal movement
p black_queen.can_move?(4, 6) == true   # Diagonal movement
p black_queen.can_move?(5, 6) == false  # Horizontal movement
p black_queen.can_move?(2, 7) == false	 # Vertical movement 

puts ""

black_pawn_start = Pawn.new(4, 7, "black")

puts "Pawn Tests 1"
p black_pawn_start.can_move?(4, 8) == false   # Diagonal movement
p black_pawn_start.can_move?(4, 6) == true   # Diagonal movement
p black_pawn_start.can_move?(5, 6) == false  # Horizontal movement
p black_pawn_start.can_move?(3, 6) == false	 # Vertical movement 

puts ""

black_pawn = Pawn.new(4, 6, "black")

puts "Pawn Tests 2"
p black_pawn.can_move?(4, 5) == true   # Diagonal movement
p black_pawn.can_move?(4, 4) == false  # Horizontal movement
p black_pawn.can_move?(2, 7) == false	 # Vertical movement 

puts ""

white_pawn_start = Pawn.new(4, 2, "white")

puts "Pawn Tests 1"
p white_pawn_start.can_move?(4, 4) == true   # Diagonal movement
p white_pawn_start.can_move?(4, 3) == true   # Diagonal movement
p white_pawn_start.can_move?(5, 4) == false  # Horizontal movement
p white_pawn_start.can_move?(3, 4) == false	 # Vertical movement 

puts ""

white_pawn = Pawn.new(4, 3, "white")

puts "Pawn Tests 2"
p white_pawn.can_move?(4, 4) == true   # Diagonal movement
p white_pawn.can_move?(4, 5) == false  # Horizontal movement
p white_pawn.can_move?(2, 7) == false	 # Vertical movement 




