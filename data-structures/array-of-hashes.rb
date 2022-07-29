passwords = [
    {"service" => "acebook", "password" => "129ahdhad"}
    {"service" => "makersbnb", "password" => "jhadhda1212"}
]

puts passwords.find { |password| password['service'] == 'acebook'}
# put into a block