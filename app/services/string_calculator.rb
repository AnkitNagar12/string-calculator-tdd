class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ",|\n" # Default delimiters: comma and newline
    if numbers.start_with?("//")
      custom_delimiter = numbers[2]
      delimiter = "#{delimiter}|#{Regexp.escape(custom_delimiter)}"
      numbers = numbers.split("\n", 2).last # Remove custom delimiter declaration
    end

    # Split numbers using all possible delimiters
    num_array = numbers.split(/#{delimiter}/).map(&:to_i)

    # Check for negative numbers
    negatives = num_array.select { |num| num < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    # Return the sum of the numbers
    num_array.sum
  end
end
