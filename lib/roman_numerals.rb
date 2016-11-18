
class RomanNumerals

  attr_reader :divisors, :convert_to_roman_numerals, :result

  def initialize
    @convert_to_roman_numerals = {
      1 => "I",
      4 => "IV",
      5 => "V",
      9 => "IX",
      10 => "X",
      40 => "XL",
      50 => "L",
      90 => "XC",
      100 => "C",
      500 => "D",
      1000 => "M"
    }
    @divisors = []
    @result = ""
  end

  def greater_than?(number, divisor)
    number >= divisor
  end

  def find_next_divisor(number)
    if greater_than?(number, 1000)
      add_divisor_to_array(1000)
      subtract(number, 1000)
    elsif greater_than?(number, 500)
      add_divisor_to_array(500)
      subtract(number, 500)
    elsif greater_than?(number, 100)
      add_divisor_to_array(100)
      subtract(number, 100)
    elsif greater_than?(number, 50)
      add_divisor_to_array(50)
      subtract(number, 50)
    elsif greater_than?(number, 10)
      add_divisor_to_array(10)
      subtract(number, 10)
    elsif greater_than?(number, 5)
      add_divisor_to_array(5)
      subtract(number, 5)
    elsif greater_than?(number, 1)
      add_divisor_to_array(1)
      subtract(number, 1)
    end
  end

  def subtract(number, number2)
    number = number - number2
    if final_number?(number)
      add_divisor_to_array(number)
      conversion_to_roman_numerals
    else
      find_next_divisor(number)
    end
  end

  def add_divisor_to_array(divisor)
    @divisors << divisor
  end

  def final_number?(number)
    convert_to_roman_numerals.has_key?(number) || number == 0
  end

  def conversion_to_roman_numerals
    @divisors.each do |num|
      @result << convert_to_roman_numerals[num]
    end
    @result
  end

end
