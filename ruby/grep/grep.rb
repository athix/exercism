class Grep
  def self.grep(pattern, flags, files)
    matches = []
    files.each do |file|
      open(file).each_line.with_index do |line, index|
        if flags.include?('-i')
          line_part = line.strip.downcase
          pattern_part = pattern.strip.downcase
        else
          line_part = line.strip
          pattern_part = pattern.strip
        end

        if flags.include?('-x')
          matcher = line_part == pattern_part
        else
          matcher = line_part.include?(pattern_part)
        end

        matcher = !matcher if flags.include?('-v')

        if flags.include?('-l') && matcher
          matches << file
          break
        end

        if matcher
          parsed_line = line.strip
          if flags.include?('-n')
            line_number = (index + 1).to_s + ':'
            parsed_line.prepend(line_number)
          end
          if files.size > 1
            file_name = file + ':'
            parsed_line.prepend(file_name)
          end
          matches << parsed_line
        end
      end
    end
    matches.join("\n")
  end
end
