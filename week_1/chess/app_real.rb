
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/bishop.rb")
require_relative("lib/knight.rb")
require_relative("lib/queen.rb")
require_relative("lib/pawn.rb")
require_relative("lib/board.rb")

#Rook Pieces
#==========================================
black_rook_right = Rook.new(8, 8, "black")
black_rook_left = Rook.new(1, 8, "black")
white_rook_left = Rook.new(1, 1, "white")
white_rook_right = Rook.new(8, 1, "white")
#===========================================

#Knight Pieces
#============================================
black_knight_right = Knight.new(7, 8, "black")
black_knight_left = Knight.new(2, 8, "black")
white_knight_left = Knight.new(2, 1, "white")
white_knight_right = Knight.new(7, 1, "white")
#==============================================

#Bishop Pieces
#=============================================
black_bishop_right = Bishop.new(6, 8, "black")
black_bishop_left = Bishop.new(3, 8, "black")
white_bishop_left = Bishop.new(3, 1, "white")
white_bishop_right = Bishop.new(6, 1, "white")
#=============================================

#Queen Pieaces
#=============================================
black_queen = Queen.new(4, 8, "black")
white_queen = Queen.new(4, 1, "white")
#=============================================

#King Pieaces
#=============================================
black_king = King.new(5, 8, "black")
white_king = King.new(5, 1, "white")
#=============================================

#Pawn Pieces
#=============================================
#Black Pawns
black_pawn_1 = Pawn.new(1, 7, "black")
black_pawn_2 = Pawn.new(2, 7, "black")
black_pawn_3 = Pawn.new(3, 7, "black")
black_pawn_4 = Pawn.new(4, 7, "black")
black_pawn_5 = Pawn.new(5, 7, "black")
black_pawn_6 = Pawn.new(6, 7, "black")
black_pawn_7 = Pawn.new(7, 7, "black")
black_pawn_8 = Pawn.new(8, 7, "black")
#White Pawns
white_pawn_1 = Pawn.new(1, 2, "white")
white_pawn_2 = Pawn.new(2, 2, "white")
white_pawn_3 = Pawn.new(3, 2, "white")
white_pawn_4 = Pawn.new(4, 2, "white")
white_pawn_5 = Pawn.new(5, 2, "white")
white_pawn_6 = Pawn.new(6, 2, "white")
white_pawn_7 = Pawn.new(7, 2, "white")
white_pawn_8 = Pawn.new(8, 2, "white")
#=============================================

#Populating The Board
#=============================================

my_board = Board.new

#Rooks
my_board.add_pieces(black_rook_left)
my_board.add_pieces(black_rook_right)
my_board.add_pieces(white_rook_right)
my_board.add_pieces(white_rook_left)

#Knights
my_board.add_pieces(black_knight_left)
my_board.add_pieces(black_knight_right)
my_board.add_pieces(white_knight_right)
my_board.add_pieces(white_knight_left)

#Bishops
my_board.add_pieces(black_bishop_left)
my_board.add_pieces(black_bishop_right)
my_board.add_pieces(white_bishop_right)
my_board.add_pieces(white_bishop_left)

#Queens
my_board.add_pieces(black_queen)
my_board.add_pieces(white_queen)

#Kings
my_board.add_pieces(black_king)
my_board.add_pieces(white_king)

#Pawns (black)
my_board.add_pieces(black_pawn_8)
my_board.add_pieces(black_pawn_7)
my_board.add_pieces(black_pawn_6)
my_board.add_pieces(black_pawn_5)
my_board.add_pieces(black_pawn_4)
my_board.add_pieces(black_pawn_3)
my_board.add_pieces(black_pawn_2)
my_board.add_pieces(black_pawn_1)

#Pawns (white)
my_board.add_pieces(white_pawn_8)
my_board.add_pieces(white_pawn_7)
my_board.add_pieces(white_pawn_6)
my_board.add_pieces(white_pawn_5)
my_board.add_pieces(white_pawn_4)
my_board.add_pieces(white_pawn_3)
my_board.add_pieces(white_pawn_2)
my_board.add_pieces(white_pawn_1)

puts "test cases"
puts""

my_board.canmove?(6,2,6,4)
my_board.canmove?(6,8,3,5)
my_board.canmove?(1,1,1,4)
my_board.canmove?(5,5,3,6)
my_board.canmove?(8,2,9,3)
my_board.canmove?(6,1,6,1)








