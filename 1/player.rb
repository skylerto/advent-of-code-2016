# => A Player in the advent of code game
class Player
  attr_accessor :directions, :orientation, :overlap_position

  def initialize
    # N, E, S, W
    @directions = [0, 0, 0, 0]
    @orientation = 0
    @overlap_position = 0
  end

  def move(position)
    determine_orientation position[0]
    apply_direction position[1, position.length].to_i
  end

  def calculate_distance
    ns = @directions[0]
    ew = @directions[1]
    ns -= @directions[2]
    ew -= @directions[3]
    ns = ns < 0 ? ns * -1 : ns
    ew = ew < 0 ? ew * -1 : ew
    distance = ns + ew
    distance
  end

  private

  def determine_orientation(direct)
    if direct.eql? 'R'
      @orientation += 1
    elsif direct.eql? 'L'
      @orientation -= 1
    end
    if @orientation >= @directions.length
      @orientation = 0
    elsif @orientation < 0
      @orientation = @directions.length - 1
    end
  end

  def apply_direction(amount)
    @directions[@orientation] += amount
    overlap = @directions[0].eql?(@directions[2]) && @directions[1].eql?(@directions[3])
    @overlap_position = calculate_distance if !@overlap_position.eql?(0) && overlap
  end
end
