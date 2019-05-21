require_relative 'piece.rb'
require 'singleton'

class NullPiece < Piece

  include Singleton

  attr_reader :output_string
  def initialize
    @output_string = " N "
  end

  def inspect 
    " N "
  end

  # def self.inspect
  #   @output_string
  # end

end