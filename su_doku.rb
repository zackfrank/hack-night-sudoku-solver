class SuDoku
  attr_reader :level, :puzzle

  def initialize(level)
    @level = level
    @puzzle = []
    get_puzzle
    format_puzzle
  end

  def get_puzzle
    File.readlines( './puzzles/easy_01.txt' ).each do |line|
      puzzle << line.chomp.split('')
    end
  end

  def format_puzzle
    puzzle.map! {|row| row.map! {|char| char == '.' ? nil : char.to_i}}
  end

  def cell_value(x, y)
    x -= 1
    y -= 1
    puzzle[x][y]
  end

  def row(x)
    x -= 1
    puzzle[x]
  end

  def column(y)
    y -= 1
    col = []
    puzzle.map {|row| col << row[y]}
    return col
  end

  def square(num)
    case num
    when 1
      [
        puzzle[0][0], puzzle[0][1], puzzle[0][2], 
        puzzle[1][0], puzzle[1][1], puzzle[1][2], 
        puzzle[2][0], puzzle[2][1], puzzle[2][2] 
      ]
    end
  end

end