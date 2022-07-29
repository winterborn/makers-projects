person = {'name' => 'jo', 'age' => 42, 'height' => 170}

person['pet'] = 'cat'
person['job'] = 'software engineer'

# puts person

# .each:
# iterate over a hash, you're iterating over all the key-value pairs and each one is passed to the block as a two element array (which is why to_s is required)
# person.each { |key_value_pair| puts "key value pair: " + key_value_pair.to_s }


# possible to deconstruct the key-value pairs as they're passed into the block and create a separate variable for each one, like this... (note that, once again, to_s is required)
# person.each { |key, value| puts "key: " + key + ", " + " value: " + value.to_s  }


# .select:
# select out anything where specified returns true
puts person.select { |key, value| key == 'job'}
puts person.select { |key, value| value == 42}

# can also combine with string methods
puts person.select { |key, value| value.to_s.include?('j')}