require_relative './player'
require_relative './reader'
require_relative './keypad'

reader = Reader.new './input.txt'
player = Player.new Keypad.new

reader.input.each do |line|
  player.move line.split('')
end
puts "Keypad Code: #{player.code}"
