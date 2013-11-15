require 'rspec'
require_relative './string_calculator'

describe StringCalculator do

  describe '#add' do

    it 'returns the number 0 for an empty string' do
      expect(StringCalculator.add('')).to eq(0)
    end

    it 'returns any number that passed in as a string' do
      expect(StringCalculator.add('1')).to eq(1)
    end

    it 'returns the sum of any 2 characters' do
      expect(StringCalculator.add('1,2')).to eq(3)
    end

    it 'returns the sum of any 4 characters' do
      expect(StringCalculator.add('8,12,4,6')).to eq(30)
    end

    it 'handles both new lines and commas as delimiter' do 
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end

    it 'handles custom delimiters' do
      expect(StringCalculator.add("//;\n2;3")).to eq(5)
    end

    it 'handles custom delimiters' do
      expect(StringCalculator.add("//;\n2;3r+M;:")).to eq(5)
    end

    it 'handles a negative number by throwing an exception' do
      expect(StringCalculator.add("-1,3")).to eq('negatives not allowed')
    end

  end
  
end
