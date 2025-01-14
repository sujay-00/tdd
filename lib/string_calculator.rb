class StringCalculator
    def add(numbers)
        return 0 if numbers.empty?
        if numbers.start_with?("//")
          delimiter, numbers = numbers[2..].split("\n", 2)
          numbers = numbers.gsub(delimiter, ",")
        end
        numbers = numbers.gsub("\n", ",")
        num_array = numbers.split(",").map(&:to_i)
        negatives = num_array.select { |n| n < 0 }
        raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
        num_array.sum
    end                                    
end
  