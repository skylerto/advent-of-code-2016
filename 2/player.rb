# Represents a player object.
# @author Skyler Layne
class Player

  # The keypad of the board.
  # @return [Keypad] this player's keypad.
  attr_accessor :keypad

  # The player's solution.
  # @return [Array] this player's code
  attr_accessor :code, :position

  def initialize(keypad)
    @keypad = keypad
    @position = [1, 1]
    @code = Array.new
  end

  # Move the player
  # @param [Array] movements arary of movement opperations.
  def move(movements)
    movements.each do |value|
      @position[0] -= 1 if value.eql?('U') && @position[0] > 0
      @position[0] += 1 if value.eql?('D') && @position[0] < 2
      @position[1] += 1 if value.eql?('R') && @position[1] < 2
      @position[1] -= 1 if value.eql?('L') && @position[1] > 0
    end
    @code << @keypad.board[@position[0]][@position[1]]
  end
end
