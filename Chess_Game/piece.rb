

class Piece

  def initialize
    # @output_string = " P "
    @color = :white
    @symbol = " P "

  end

  def inspect
    @symbol.colorize(:color => @color)
  end

end

