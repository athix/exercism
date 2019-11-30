require 'byebug'

class Matrix
  attr_accessor :matrix

  def initialize(matrix)
    rows = matrix.split("\n")
    self.matrix = []

    rows.each do |row|
      self.matrix << row.split(' ').map(&:to_i)
    end
  end

  def rows
    matrix
  end
end
