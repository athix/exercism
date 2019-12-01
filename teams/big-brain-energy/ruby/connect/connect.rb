class Board
  attr_accessor :board

  # Player O = Top/Bottom
  # Player X = Left/Right

  def initialize(board)
    self.board = board
    self.visualize
  end

  def visualize
    output = ""
    board.each_with_index do |row, index|
      index.times { output += ' ' }
      output += row + "\n"
    end
    puts "\n"
    puts output
    puts "\n"
    self
  end

  def winner
    ''
  end

  # Credit to: https://www.redblobgames.com/grids/hexagons/
  # https://www.redblobgames.com/grids/hexagons/implementation.html
  class HexGrid
  end
end
