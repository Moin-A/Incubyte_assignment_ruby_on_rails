class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?
        parse_numbers(numbers).sum
    end

    private
  
    def self.parse_numbers(numbers)
        numbers.split(/,|\n/).map(&:to_i)
    end
  end