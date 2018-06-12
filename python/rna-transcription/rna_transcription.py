def to_rna(dna_strand):
  try:
    value = rna_transcription(dna_strand)
    return value
  except ValueError as err:
    print(err)
def rna_transcription(dna):
  if len(dna) > 1:
    rna = ''
    for char in dna:
      rna += rna_transcription(char)
    return rna
  elif len(dna) < 1:
    raise ValueError('DNA must not be empty!')
  else:
    value = {
      'G': 'C',
      'C': 'G',
      'T': 'A',
      'A': 'U'
    }.get(dna, 'ihatepython')
    if value is 'ihatepython':
      raise ValueError('invalid DNA')
    else:
      return value
