def middle_number_is?(numbers)
    middle_number = numbers[numbers.length / 2]
    yield(middle_number)
end

puts middle_number_is?([1,2,3,4,5]) { |middle| middle.odd? }
puts middle_number_is?([1,2,3,4,5]) { |middle| middle.even? }
puts middle_number_is?([1,2,3,4,5]) { |middle| middle > 2 }