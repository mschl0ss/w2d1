require_relative 'piece.rb'
require 'singleton'
require 'colorize'

class NullPiece < Piece

  include Singleton

  attr_reader :output_string
  def initialize
    @color = :green
    @symbol = " N "
  end

  def inspect 
    @symbol.colorize(:color => @color)
  end

 
end