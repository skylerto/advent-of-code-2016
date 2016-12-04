require_relative '../player'
require_relative '../reader'
require_relative '../keypad'
require 'test/unit'

class TestPlayer < Test::Unit::TestCase
  def setup
    reader = Reader.new '../input.txt'
    @input = reader.input
    @keypad = keypad.new
  end

  def test_directions
    player = Player.new @keypad
    @input.each do |line|
      ops = line.split('')
      player.move ops
    end
  end

  def test_move
    player = Player.new @keypad 
    lines = ['ULL',
    'RRDDD',
    'LURDL',
    'UUUUD']
    lines.each do |line|
      ops = line.split('')
      player.move ops
    end
    assert_equal([1,9,8,5], player.code)
  end
end
