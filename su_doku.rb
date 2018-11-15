class SuDoku
  attr_reader :level, :puzzle

  def initialize(level)
    @level = level
    @puzzle = []
    get_puzzle
  end

  def get_puzzle
    File.readlines( './puzzles/easy_01.txt' ).each do |line|
      puzzle << line.chomp.split('')
    end
  end

end