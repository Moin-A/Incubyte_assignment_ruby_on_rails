require 'spec_helper'
require_relative '../lib/string_calculator'

describe StringCalculator do
  describe '.add' do
    it 'returns 0 for empty string' do
      expect(StringCalculator.add("")).to eq(0)
    end
  end
end