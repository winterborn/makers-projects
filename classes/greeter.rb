class Greeter
     def initialize(name)
        @name = name
     end
            
    def hello
        return "hello, " + @name
    end

    def goodbye
        return "goodbye, " + @name
    end
end

my_greeter = Greeter.new("Phil")
puts my_greeter.hello
puts my_greeter.goodbye

another_greeter = Greeter.new("Kat")
puts another_greeter.hello
puts another_greeter.goodbye
