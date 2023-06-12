# Issue number 8

def put_name(first_name)
    puts first_name
end


def nested_put(first_name)
    put_name(first_name)
end


def double_nested_put(first_name)
    nested_put(first_name)
end

class Human
    @@first_name = "Spongebob"
    @@last_name = "Squarepants"

    def first_name
        @@first_name
    end

    def last_name
        @@last_name
    end
end


class SuperHuman 
    def initialize()
        human = Human.new
        
        double_nested_put(human.first_name)
        double_nested_put(human.last_name)
    end
end

sh = SuperHuman.new


