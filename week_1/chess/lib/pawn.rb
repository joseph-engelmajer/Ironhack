
class Pawn
attr_accessor :x,:y,:color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    if @color == "white" && @x == final_x && final_y == (@y + 1)
        true
    elsif @color == "black"  && @x == final_x && final_y == (@y - 1)
        true
    elsif @color == "black" && @y == 7 && (final_y == (@y - 1) || final_y == (@y - 2)) && @x == final_x
        true
    elsif @color == "white" && @y == 2 && (final_y == (@y + 1) || final_y == (@y + 2)) && @x == final_x
        true
    else
        false
    end 
  end
end