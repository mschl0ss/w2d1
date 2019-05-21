require 'colorize'

require_relative 'cursor.rb'
require_relative 'board.rb'

class Display
  def initialize(board)  
    system("clear")
    @board = board
    @cursor = Cursor.new([0, 0], board)
  end

  def render
    for row in 0..7 
      for col in 0..7
        if [row, col] == @cursor.cursor_pos
          print @board.grid[row][col].inspect.colorize(:background => :green)
        else  
          print @board.grid[row][col].inspect
        end
      end
      puts 
    end
  end

  def move_cursor
    
    until false
      @cursor.get_input
      # puts"------------------------"
      system("clear")
      render
      
    end
  end
end



b = Board.new 
d = Display.new(b)
d.render 
d.move_cursor
