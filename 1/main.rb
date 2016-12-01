require_relative './reader'
require_relative './player'

reader = Reader.new './input.txt'
player = Player.new
reader.input.each do |position|
  player.move position
end
puts player.calculate_distance
