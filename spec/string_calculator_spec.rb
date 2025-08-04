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

  end
end