# app/services/string_calculator.rb
class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    numbers = numbers.gsub("\n", ',') # Replace newlines with commas
    numbers.split(',').map(&:to_i).sum
  end
end

