class Grep
  def self.grep(pattern, flags, files)
    matches = []
    files.each do |file|
      open(file).each_line do |line|
        matches << line.strip if line.include?(pattern)
      end
    end
    matches.size > 1 ? matches : matches.first
  end
end
