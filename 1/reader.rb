# => Read in a file
class Reader
  attr_accessor :input

  def initialize(file)
    File.open(file, 'r') do |text|
      while (line = text.gets)
        @input = line
      end
    end
    @input = input.split(', ')
  end
end
