class Player
  attr_accessor :keypad, :code, :position
  def initialize(keypad)
    @keypad = keypad
    @code = Array.new
    @position = [1, 1]
    @code = Array.new
  end

  def move(movements)
    movements.each do |value|
      @position[0] -= 1 if value.eql?('U') && @position[0] < 2
      @position[0] += 1 if value.eql?('D') && @position[0] > 0
      @position[1] += 1 if value.eql?('R') && @position[1] < 2
      @position[1] -= 1 if value.eql?('L') && @position[1] > 0
    end
    @code << @keypad.board[@position[0]][@position[1]]
  end
end
