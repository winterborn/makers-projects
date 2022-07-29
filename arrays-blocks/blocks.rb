numbers = [1, 2, 3, 4, 5, 6, 7, 8]

puts numbers.find { |number| number > 6 }
puts numbers.select { |number| number > 6 }
puts numbers.all? { |number| number > 6 }
puts numbers.any? { |number| number > 6 }
puts numbers.reject { |number| number > 6 }
