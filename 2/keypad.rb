# Represents a 9-digit keypad
# @author Skyler Layne
class Keypad
  attr_accessor :board

  def initialize
    @board = Array.new
    @board << [1, 2, 3]
    @board << [4, 5, 6]
    @board << [7, 8, 9]
  end
end
