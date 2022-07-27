class FamousPerson
    def initialize(name, birthday, company)
        @name = name
        @birthday = birthday
        @company = company
    end

    def output
        return @name, @birthday, @company
    end
end

person1 = FamousPerson.new("Bill Gates", "28th October 1955", "Microsoft")
person2 = FamousPerson.new("Steve Jobs", "24th February 1955", "Apple")
person3 = FamousPerson.new("Mark Zuckerberg", "14th May 1984", "Facebook")

puts person1.output
puts person2.output
puts person3.output