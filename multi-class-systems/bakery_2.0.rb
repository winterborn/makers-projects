

class Cake
    def initialize
        @flavour = ""
        @size = 100
    end
    def set_flavour(flavour)
        @flavour = flavour
    end
    def take_slice(slice)
        @size -= slice
        p "You have taken a #{slice} percent sized slice. There is #{@size} percent cake remaining."
    end
    attr_reader :flavour, :size
end

class Order 
    def initialize
        @flavour = flavour_rand()
        @size = (rand * 100).ceil
    end

    def flavour_rand
        rand_perc = rand * 100
        if rand_perc > 80
            "Strawberry"
        elsif rand_perc > 60
            "Vanilla"
        elsif rand_perc > 40
            "Chocolate"
        elsif rand_perc > 20
            "Banana"
        else
            "Carrot"
        end
    end

    def satisfy_order(cake)
        if cake.flavour == @flavour
            p "The flavour is correct!"
            sleep(3)
            if cake.size == @size
                p "The size is correct. Order Satisfied"
                sleep(3)
                $completed += 1
                if $completed > 5
                    complete()
                end
                $order = run_order()
            end
        end
    end

    attr_accessor :flavour, :size
end
   

def run_order
    order = Order.new
    p "You have a new order! A #{order.flavour} flavour cake that is #{order.size} size!"
    return order
end

def complete
    p "You have finished today's orders! EXCELLENT!"
    exit()
end
def run
    $completed = 0
    $order = run_order()
    sleep(3)
    p "Run '$order' to see your order & begin!"
end

run()

    
    