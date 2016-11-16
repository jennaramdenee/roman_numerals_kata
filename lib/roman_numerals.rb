def convert_to_number(letter)
  return 1 if letter == "I"
  return 5 if letter == "V"
  return 10 if letter == "X"
  return 50 if letter == "L"
  return 100 if letter == "C"
  return 500 if letter == "D"
  return 1000 if letter == "M"
  return "Not a valid letter"
end

def convert_to_roman_numerals(number)
  return "I" if number == 1
  return "V" if number == 5
  return "X" if number == 10
  return "L" if number == 50
  return "C" if number == 100
  return "D" if number == 500
  return "M" if number == 1000
  return "Not a valid number"
end

def divisible_by?(number, divisor)
  number % divisor == 0
end

def find_next_divisor(number)
  return 1000 if divisible_by?(number, 1000)
  return 500 if divisible_by?(number, 500)
  return 100 if divisible_by?(number, 100)
  return 50 if divisible_by?(number, 50)
  return 10 if divisible_by?(number, 10)
  return 5 if divisible_by?(number, 5)
  return 1 if divisible_by?(number, 1)

end
