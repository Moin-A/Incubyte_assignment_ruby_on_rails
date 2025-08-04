class StringCalculator
    def self.add(numbers)
       return 0 if numbers.empty?

        nums = if custom_delemiter?(numbers)
           delimiter, numbers_part = extract_custom_delimiter(numbers)
           numbers_part.split(delimiter).map(&:to_i)
        else
           parse_numbers(numbers)
        end

        negatives =  nums.select { |n| n < 0 }

        unless negatives.empty?
            raise "negative numbers not allowed #{negatives.join(',')}"
        end
          
        nums.sum
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