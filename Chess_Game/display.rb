require 'colorize'

require_relative 'cursor.rb'
require 'board.rb'

class Display
  def initialize(board)  
    @cursor = Cursor.new([0, 0], board)
  end

  def 
end