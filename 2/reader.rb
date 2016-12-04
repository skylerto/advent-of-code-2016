# Read in a file
# @author Skyler Layne
class Reader

  # The array of input lines.
  # @return [Array] an array of input.
  attr_accessor :input

  def initialize(file)
    @input = Array.new
    File.open(file, 'r') do |text|
      while (line = text.gets)
        @input << line
      end
    end
  end
end
