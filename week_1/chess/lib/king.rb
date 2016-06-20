class King
attr_accessor :x,:y,:color
  def initialize(x, y, color)
    @x = x
    @y = y
    @color = color
  end

  def can_move?(final_x, final_y)
    if final_x > (@x + 1) || final_y > (@y + 1)
      false
    elsif final_x < (@x - 1) || final_y < (@y - 1)
      false
    else
      true

      # Can also use absolute values (Sassy Sebastian's method)
      # ex. if (final_x - @x).abs > 1 false 
    end
  end
end