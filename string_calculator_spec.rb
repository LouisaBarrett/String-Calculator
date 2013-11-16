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
      expect(StringCalculator.add("//*\n2*38*10")).to eq(50)
    end

    context 'when given negative numbers' do
      it 'throws an exception' do
        expect { StringCalculator.add("-1,3") }.to raise_error(/negatives not allowed/)
      end

      it 'provides a helpful list of negative numbers that were provided' do
        expect { StringCalculator.add("3,7,-9,10,12,-3") }.to raise_error(/negatives passed: -9, -3/)
      end
    end

  end
  
end
