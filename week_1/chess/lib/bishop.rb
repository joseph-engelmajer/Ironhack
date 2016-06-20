class Bishop
attr_accessor :x,:y,:color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    if (final_x - @x).abs == (final_y - @y).abs
      true
    else
      false
    end
  end
end