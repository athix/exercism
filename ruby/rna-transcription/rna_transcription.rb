class Complement
  def self.of_dna(dna)
    begin
      self.rna_transcription(dna)
    rescue ArgumentError
      ''
    end
  end

  private

  def self.rna_transcription(dna)
    if dna.length > 1
      rna = []
      dna.chars.each do |char|
        rna << self.rna_transcription(char)
      end
      rna.join
    elsif dna.length < 1
      raise ArgumentError
    else
      rna = case(dna)
      when 'G'
        'C'
      when 'C'
        'G'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        raise ArgumentError
      end
    end
  end
end

module BookKeeping
  VERSION = 4
end
