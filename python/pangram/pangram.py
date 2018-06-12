def is_pangram(sentence):
  # For each letter from a to z...
  for char in range(ord('a'), ord('z'), 1):
    if chr(char) not in sentence.lower():
      return False
  return True
