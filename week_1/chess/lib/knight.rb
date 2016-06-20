class Knight
  attr_accessor :x,:y,:color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    if (final_x - @x).abs == 1 && (final_y - @y).abs == 2
      true
    elsif (final_x - @x).abs == 2 && (final_y - @y).abs == 1
      true 
    else
      false
    end
  end
end