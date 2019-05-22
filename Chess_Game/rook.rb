require_relative 'slideable.rb'

class Rook < Piece
  include Slideable

  def initialize 
    super 
    @symbol = " R "
  end

  def moves 
    moves = [] 
    
  end
end