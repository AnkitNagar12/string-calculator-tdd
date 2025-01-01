class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = ",|\n" # Default delimiters: comma and newline
    if numbers.start_with?("//")
      custom_delimiter = numbers[2]
      delimiter = "#{delimiter}|#{Regexp.escape(custom_delimiter)}"
      numbers = numbers.split("\n", 2).last # Remove custom delimiter declaration
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end
