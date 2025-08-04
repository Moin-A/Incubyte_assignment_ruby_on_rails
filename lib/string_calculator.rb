class StringCalculator
    def self.add(numbers)
       return 0 if numbers.empty?

        if custom_delemiter?(numbers)
           delimiter, numbers_part = extract_custom_delimiter(numbers)
           numbers_part.split(delimiter).map(&:to_i).sum
        else
           parse_numbers(numbers).sum
        end
    end

    private

    def self.custom_delemiter?(numbers)
        numbers.start_with?('//')
    end    
  
    def self.parse_numbers(numbers)
        numbers.split(/,|\n/).map(&:to_i)
    end

    def self.extract_custom_delimiter(numbers)
        lines = numbers.split("\n") 
        delimiter = lines[0][2] 
        numbers_part = lines[1]
        [delimiter, numbers_part]
      end
  end