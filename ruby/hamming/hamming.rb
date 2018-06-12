class Hamming
  def self.compute(origin, destination)
    raise HammingImpossible unless origin.length == destination.length
    origin.chars.select.with_index{ |char, index| char != destination[index] }.count
  end
end

class HammingImpossible < ArgumentError
  def initialize(msg = 'Length of origin and destination must match for Hamming computation.')
    super(msg)
  end
end

module BookKeeping
  VERSION = 3
end
