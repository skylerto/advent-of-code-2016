require_relative '../keypad'
require 'test/unit'

class TestPlayer < Test::Unit::TestCase
  def setup
    @keypad = Keypad.new
  end

  def test_board
    keypad = Keypad.new
    assert_equal(3, keypad.board.length)
    assert_equal(3, keypad.board[0].length)
    assert_equal(3, keypad.board[1].length)
    assert_equal(3, keypad.board[2].length)
  end
end
