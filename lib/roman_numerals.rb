# def convert_to_number(letter)
#   return 1 if letter == "I"
#   return 5 if letter == "V"
#   return 10 if letter == "X"
#   return 50 if letter == "L"
#   return 100 if letter == "C"
#   return 500 if letter == "D"
#   return 1000 if letter == "M"
#   return "Not a valid letter"
# end

convert_to_roman_numerals = {
  1 => "I",
  5 => "V",
  10 => "X",
  50 => "L",
  100 => "C",
  500 => "D",
  1000 => "M"
}

divisors = []

def divisible_by?(number, divisor)
  number % divisor == 0
end

def find_next_divisor(number)
  if divisible_by?(number, 1000)
    add_divisor_to_array(1000)
    subtract(number, 1000)
  elsif divisible_by?(number, 500)
    add_divisor_to_array(500)
    subtract(number, 500)
  elsif divisible_by?(number, 100)
    add_divisor_to_array(100)
    subtract(number, 100)
  elsif divisible_by?(number, 50)
    add_divisor_to_array(50)
    subtract(number, 50)
  elsif divisible_by?(number, 10)
    add_divisor_to_array(10)
    subtract(number, 10)
  elsif divisible_by?(number, 5)
    add_divisor_to_array(5)
    subtract(number, 5)
  elsif divisible_by?(number, 1)
    add_divisor_to_array(1)
    subtract(number, 1)
  end
end

def subtract(number, number2)
  number = number - number2
  if !final_number?
    find_next_divisor(number)
  else
    add_divisor_to_array(number)
    change_to_roman_numerals(divisors)
  end
end

def final_number?
  convert_to_roman_numerals.has_key?(number)
end

def add_divisor_to_array(divisor)
  divisors << divisor
end

def change_to_roman_numerals(divisors)
  divisors.inject { |sum, divisor|, sum + convert_to_roman_numerals[divisor] }
end
