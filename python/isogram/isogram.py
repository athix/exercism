def is_isogram(string):
  word = string.lower()
  for char in word:
    if char.isalpha() and word.count(char) > 1:
      return False
  return True
