require './lib/roman_numerals'

describe RomanNumerals do

  subject(:number) { described_class.new }

  context 'Convert to roman numerals' do

    it 'can convert an array of numbers to a string of roman numerals' do
      number.add_divisor_to_array(500)
      number.add_divisor_to_array(50)
      expect(number.conversion_to_roman_numerals).to eq "DL"
    end

    it 'returns "XXV" when passed 25' do
      expect(number.find_next_divisor(25)).to eq "XXV"
    end

    it 'returns "MDLIV" when passed 1554' do
      expect(number.find_next_divisor(1554)).to eq "MDLIV"
    end

  end

end
