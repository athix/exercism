def verify(isbn):
  isbn = isbn.replace('-', '')
  try:
    if len(isbn) > 10:
      raise ValueError('isbn too long')
    elif len(isbn) < 10:
      raise ValueError('isbn too short')
    result = 0
    for index, char in enumerate(isbn):
      multiplier = 10 - index
      if char.isdigit():
        result += int(char) * multiplier
      elif char.isalpha() and char == 'X' and index == 9:
        result += 10
      else:
        raise ValueError('isbn contains bad character')
    return (result % 11) == 0
  except ValueError:
    return False
