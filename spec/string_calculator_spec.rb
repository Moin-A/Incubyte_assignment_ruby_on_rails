require 'spec_helper'
require_relative '../lib/string_calculator'

describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end

    it 'returns the number itself for single number' do
        expect(StringCalculator.add("1")).to eq(1)
        expect(StringCalculator.add("5")).to eq(5)
    end

    it 'returns sum of two comma-separated numbers' do
        expect(StringCalculator.add("1,2")).to eq(3)
        expect(StringCalculator.add("1,5")).to eq(6)
    end

    it 'returns sum of multiple comma-separated numbers' do
        expect(StringCalculator.add("1,2,3")).to eq(6)
        expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
    end

    it 'handles newlines between numbers' do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
        expect(StringCalculator.add("1\n2\n3")).to eq(6)
    end

  end
end