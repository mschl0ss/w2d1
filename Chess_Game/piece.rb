require_relative 'board.rb'

class Piece

  def initialize(color, board, pos)
    @color = :white
    # @symbol = " P "
    @pos = []
    @board = board 
  end

  def inspect
    @symbol.colorize(:color => @color)
  end

  def pos=(val)
    pos = val 
  end

  def empty?

  end

end

# [1, 2].product([-1, -2])
# [1, -1, 2, -2].permutation(2).to_a.select{|x| x[0].abs != x[1].abs}