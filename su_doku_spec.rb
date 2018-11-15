require_relative 'su_doku'

#   .256..49.
#   7...2....
#   .84.376..
#   5.9....3.
#   1.23.58.9
#   .3....2.4
#   ..385.92.
#   ....9...3
#   .91..357.

RSpec.describe SuDoku do
  
  it "is level: easy" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.level).to eq(:easy)
  end
  
  it "has a puzzle" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.puzzle.length).to eq(9)
  end

  it "converts periods to nil" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.puzzle[0]).to eq([nil, 2, 5, 6, nil, nil, 4, 9, nil])
    expect(@sudoku.puzzle[1]).to eq([7, nil, nil, nil, 2, nil, nil, nil, nil])
  end

  it "checks the value of a specific square" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.cell_value(1, 1)).to eq(nil)
    expect(@sudoku.cell_value(3, 5)).to eq(3)
    expect(@sudoku.cell_value(9, 8)).to eq(7)
  end

  it "checks a row" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.row(1)).to eq([nil, 2, 5, 6, nil, nil, 4, 9, nil])
    expect(@sudoku.row(3)).to eq([nil, 8, 4, nil, 3, 7, 6, nil, nil])
  end

  it "checks a column" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.column(1)).to eq([nil, 7, nil, 5, 1, nil, nil, nil, nil])
    expect(@sudoku.column(3)).to eq([5, nil, 4, 9, 2, nil, 3, nil, 1])
  end

  it "checks a square" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.square(1)).to eq([nil, 7, nil, 5, 1, nil, nil, nil, nil])
    expect(@sudoku.column(3)).to eq([5, nil, 4, 9, 2, nil, 3, nil, 1])
  end

end