require './lib/roman_numerals'

describe 'roman_numerals' do

  context 'Conversion from roman numeral to numbers' do

    it 'returns 1 when passed "I"' do
      expect(convert_to_number("I")).to eq 1
    end

    it 'returns 5 when passed "V"' do
      expect(convert_to_number("V")).to eq 5
    end

    it 'returns 10 when passed "X"' do
      expect(convert_to_number("X")).to eq 10
    end

    it 'returns 50 when passed "L"' do
      expect(convert_to_number("L")).to eq 50
    end

    it 'returns 100 when passed "C"' do
      expect(convert_to_number("C")).to eq 100
    end

    it 'returns 500 when passed "D"' do
      expect(convert_to_number("D")).to eq 500
    end

    it 'returns 1000 when passed "M"' do
      expect(convert_to_number("M")).to eq 1000
    end

    it 'returns "Not a valid letter" when passed "Q"' do
      expect(convert_to_number("Q")).to eq "Not a valid letter"
    end

  end

  context 'Conversion from numbers to roman numerals' do

    it 'returns "I" when passed 1' do
      expect(convert_to_roman_numerals(1)).to eq "I"
    end

    it 'returns "V" when passed 5' do
      expect(convert_to_roman_numerals(5)).to eq "V"
    end

    it 'returns "X" when passed 10' do
      expect(convert_to_roman_numerals(10)).to eq "X"
    end

    it 'returns "L" when passed 50' do
      expect(convert_to_roman_numerals(50)).to eq "L"
    end

    it 'returns "C" when passed 100' do
      expect(convert_to_roman_numerals(100)).to eq "C"
    end

    it 'returns "D" when passed 500' do
      expect(convert_to_roman_numerals(500)).to eq "D"
    end

    it 'returns "M" when passed 1000' do
      expect(convert_to_roman_numerals(1000)).to eq "M"
    end

    it 'returns "Not a valid number" when passed "66"' do
      expect(convert_to_roman_numerals(66)). to eq "Not a valid number"
    end

  end

  context 'Divisibility' do

    it 'can calculate aribitrary divisibility' do
      expect(divisible_by?(1, 1)).to eq true
      expect(divisible_by?(5, 5)).to eq true
      expect(divisible_by?(10, 10)).to eq true
      expect(divisible_by?(50, 50)).to eq true
      expect(divisible_by?(100, 100)).to eq true
      expect(divisible_by?(500, 500)).to eq true
      expect(divisible_by?(1000, 1000)).to eq true
    end

    it 'can calculate aribitrary indivisibility' do
      expect(divisible_by?(1, 5)).to eq false
      expect(divisible_by?(5, 10)).to eq false
      expect(divisible_by?(10, 50)).to eq false
      expect(divisible_by?(50, 100)).to eq false
      expect(divisible_by?(100, 500)).to eq false
      expect(divisible_by?(500, 1000)).to eq false
      expect(divisible_by?(1000, 2000)).to eq false
    end


  end

  context 'Find next divisor' do

    it 'returns 1000 when given 1000' do
      expect(find_next_divisor(1000)).to eq 1000
    end

    it 'returns 500 when given 500' do
      expect(find_next_divisor(500)).to eq 500
    end

    it 'returns 100 when given 100' do
      expect(find_next_divisor(100)).to eq 100
    end

    it 'returns 50 when given 50' do
      expect(find_next_divisor(50)).to eq 50
    end

    it 'returns 10 when given 10' do
      expect(find_next_divisor(10)).to eq 10
    end

    it 'returns 5 when given 5' do
      expect(find_next_divisor(5)).to eq 5
    end

    it 'returns 1 when given 1' do
      expect(find_next_divisor(1)).to eq 1
    end


  end



end
