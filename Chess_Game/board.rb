require_relative 'piece.rb'
require_relative 'null_piece.rb'

class NoPieceAtStartPosError < StandardError; end
class PosOccupiedByFriendlyError < StandardError; end
class TriedToMoveOffBoardError < StandardError; end
class InvalidStartPosError < StandardError; end
class InvalidPosError < StandardError; end
   

class Board

  attr_reader :rows
  def initialize
    
    #each position on the board either holds a moving Piece or a NullPiece
    @rows = Array.new(8) { Array.new(8, nil) }
    
    # (0...@rows.length).each do |row|
    #   (0...@rows[row].length).each do |col|
    #     if row <=1 || row >= 6
    #       @rows[row][col] = Piece.new
    #     else
    #       @rows[row][col] = NullPiece.instance
    #     end
    #   end
    # end
  end

  def move_piece(start_pos, end_pos)
    
    sx, sy = start_pos
    ex, ey = end_pos

    if @rows[sx][sy].instance_of?(NullPiece)
      #throw errors
      raise NoPieceAtStartPosError
    elsif !valid_pos(@rows[ex][ey])
      raise InvalidPosError
    elsif !@rows[ex][ey] == NullPiece
      raise PosOccupiedByFriendlyError
    else
      #move the piece
      target_piece = @rows[sx][sy]
      @rows[sx][sy] = NullPiece
      @rows[ex][ey] = target_piece
    end
 
  end

  def [](pos)
    x,y = pos
    @rows[x][y]
  end

  def []=(pos, val)
    x,y = pos
    @rows[x,y] = val
  end

  def add_piece(piece, pos)
    x, y = pos 
    @rows[x, y] = piece
  end

  def valid_pos?(pos)

    x,y = pos
    if !x.between?(0,7) || !y.between?(0,7)
      return false
    end

      
# if @rows[sx][sy].instance_of?(NullPiece)
#       #throw errors
#       raise NoPieceAtStartPosError
#     elsif sx > 7 || sy > 7
#       raise InvalidStartPosError
#     elsif ex > 7 || ey > 7
#       #the piece cannot move to end_pos
#       #throw error
#       raise TriedToMoveOffBoardError
#     elsif !@rows[ex][ey] == NullPiece
#       raise PosOccupiedByFriendlyError
  end

end

# b = Board.new

# b.move_piece([0,0], [4,0])
# print b.grid