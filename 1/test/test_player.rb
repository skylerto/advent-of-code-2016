require_relative '../player'
require 'test/unit'

class TestPlayer < Test::Unit::TestCase
  def test_move_right_once
    player = Player.new
    player.move('R1')
    assert_equal([0, 1, 0, 0], player.directions)
  end

  def test_move_right_once_left_once
    player = Player.new
    player.move('R1')
    assert_equal([0, 1, 0, 0], player.directions)
    player.move('L1')
    assert_equal([1, 1, 0, 0], player.directions)
  end

  def test_move_right_once_left_once_right_three
    player = Player.new
    player.move('R1')
    assert_equal([0, 1, 0, 0], player.directions)
    player.move('L1')
    assert_equal([1, 1, 0, 0], player.directions)
    player.move('R0')
    assert_equal([1, 1, 0, 0], player.directions)
    player.move('R1')
    assert_equal([1, 1, 1, 0], player.directions)
    player.move('R1')
    assert_equal([1, 1, 1, 1], player.directions)
  end

  def test_move_left_once
    player = Player.new
    player.move('L1')
    assert_equal([0, 0, 0, 1], player.directions)
  end

  def test_move_turn_five_right_one
    player = Player.new
    player.move('R1')
    assert_equal([0, 1, 0, 0], player.directions)
    player.move('R1')
    assert_equal([0, 1, 1, 0], player.directions)
    player.move('R1')
    assert_equal([0, 1, 1, 1], player.directions)
    player.move('R1')
    assert_equal([1, 1, 1, 1], player.directions)
  end

  def test_move_return_to_start
    player = Player.new
    player.move('R2')
    assert_equal([0, 2, 0, 0], player.directions)
    player.move('R1')
    assert_equal([0, 2, 1, 0], player.directions)
    player.move('R1')
    assert_equal([0, 2, 1, 1], player.directions)
    player.move('R1')
    assert_equal([1, 2, 1, 1], player.directions)
  end

  def test_calculate_distance
    player = Player.new
    player.move('R2')
    assert_equal([0, 2, 0, 0], player.directions)
    assert_equal(2, player.calculate_distance)
  end

  def test_calculate_distance_return_to_start
    player = Player.new
    player.move('R2')
    assert_equal([0, 2, 0, 0], player.directions)
    player.move('R0')
    assert_equal([0, 2, 0, 0], player.directions)
    player.move('R2')
    assert_equal([0, 2, 0, 2], player.directions)
    assert_equal(0, player.calculate_distance)
  end

  def test_player_overlap
    player = Player.new
    player.move 'R8'
    player.move 'R4'
    player.move 'R4'
    player.move 'R8'
    assert_equal(4, player.overlap_position)
  end
end
