class Gigasecond
  def self.from(time)
    time + gigasecond
  end

  private

  def self.gigasecond
    10**9
  end
end

module BookKeeping
  VERSION = 6
end
