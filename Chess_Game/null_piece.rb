require_relative 'piece.rb'
require 'singleton'

class NullPiece < Piece

  include Singleton

  attr_reader :output_string
  def initialize
    @output_string = " N "
  end

  def self.output_string
     "N".to_s 
  end

  # def inspect
  #   @output_string
  # end

end