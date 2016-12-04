require_relative '../player'
require_relative '../reader'
require 'test/unit'

class TestPlayer < Test::Unit::TestCase
  def setup
    reader = Reader.new './input.txt'
    @input = reader.input
  end

  def test_directions
    player = Player.new
    @input.each do |position|
      player.move position
    end
    assert(player.calculate_distance > 0)
  end
end
