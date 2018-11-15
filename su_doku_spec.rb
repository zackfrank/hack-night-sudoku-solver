require_relative 'su_doku'

RSpec.describe SuDoku do
  
  it "is level: easy" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.level).to eq(:easy)
  end
  
  it "has a puzzle" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.puzzle.length).to eq(9)
  end

  it "has a puzzle made up of arrays of 9 characters each" do
    @sudoku = SuDoku.new(:easy)
    expect(@sudoku.puzzle[0]).to eq(['.', '2', '5', '6', '.', '.', '4', '9', '.'])
    expect(@sudoku.puzzle[1]).to eq(['7', '.', '.', '.', '2', '.', '.', '.', '.'])
  end

end