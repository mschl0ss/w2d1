require_relative 'piece.rb'
require_relative 'null_piece.rb'

class NoPieceAtStartPosError < StandardError; end
class PosOccupiedByFriendlyError < StandardError; end
class TriedToMoveOffBoardError < StandardError; end
class InvalidStartPosError < StandardError; end
   
class Board

  attr_reader :grid
  def initialize
    #each position on the board either holds a moving Piece or a NullPiece
    @grid = Array.new(8) { Array.new(8, nil) }

    (0...@grid.length).each do |row|
      (0...@grid[row].length).each do |col|
        if row <=1 || row >= 6
          @grid[row][col] = Piece.new
        else
          @grid[row][col] = NullPiece
        end
      end
    end

  end

  def move_piece(start_pos, end_pos)
    
    sx, sy = start_pos
    ex, ey = end_pos

    if @grid[sx][sy].instance_of?(NullPiece)
      #throw errors
      raise NoPieceAtStartPosError
    elsif sx > 7 || sy > 7
      raise InvalidStartPosError
    elsif ex > 7 || ey > 7
      #the piece cannot move to end_pos
      #throw error
      raise TriedToMoveOffBoardError
    elsif !@grid[ex][ey] == NullPiece

      raise PosOccupiedByFriendlyError

    else
      #move the piece
      target_piece = @grid[sx][sy]
      @grid[sx][sy] = NullPiece
      @grid[ex][ey] = target_piece
    end
  
      
    
  end

end

b = Board.new

b.move_piece([0,0], [4,0])
print b.grid