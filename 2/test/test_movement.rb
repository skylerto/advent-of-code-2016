require_relative '../keypad'
require_relative '../player'
require 'test/unit'

class TestPlayer < Test::Unit::TestCase
  def setup
    @keypad = Keypad.new
  end

  def test_create
    player = Player.new @keypad
    assert_equal(player.keypad, @keypad)
  end

  def test_move
    player = Player.new @keypad
    player.move ['U', 'L', 'L']
    assert_equal(player.position, [0,0])
    assert_equal(player.code, [1])
  end
end
