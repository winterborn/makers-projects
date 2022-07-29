# [1,2,3,4,5,6,7].each {|number| puts number * 2}


# .each does not change original array or create a new array

# numbers = [1,2,3,4,5,6,9,12]
# numbers.each { |number| number * 3} 
# puts numbers


# .map returns a new array but does not alter the original

numbers = [1,2,3,4,5,6,9,12]
trebled_numbers = numbers.map { |number| number * 3} 

puts "original array"
puts numbers

puts "new array"
puts trebled_numbers

