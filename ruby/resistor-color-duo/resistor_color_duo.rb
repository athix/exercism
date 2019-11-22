class ResistorColorDuo
  def self.value(colors)
    raise ArgumentError unless colors.is_a?(Array)
    raise ArgumentError unless colors.all?{ |c| c.is_a?(String) }
    total_resistance =
      resistance(colors[0]).to_s + resistance(colors[1]).to_s
    total_resistance.to_i
  end

  def self.resistance(color)
    case color.downcase
    when 'black'
      0
    when 'brown'
      1
    when 'red'
      2
    when 'orange'
      3
    when 'yellow'
      4
    when 'green'
      5
    when 'blue'
      6
    when 'violet'
      7
    when 'grey'
      8
    when 'white'
      9
    else
      raise ArgumentError
    end
  end
end
