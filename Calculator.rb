puts "welcome  in calculator class"

class Calculator
    
    def initialize(num1,num2)
        @num1=num1
        @num2=num2
    end

    attr_accessor:num1
    attr_accessor:num2

    def add
        @num1+@num2
    end

    def substract
        @num1-@num2
    end

    def multiply
        @num1*@num2
    end

    def divide
        @num1/@num2
    end

    def module
        @num1 % @num2
    end
end

puts "First Object"
res1 = Calculator.new(25,5)
puts "Values #{res1.num1} , #{res1.num2}"
puts res1.add
puts res1.substract
puts res1.multiply
puts res1.divide
puts res1.module

puts "Second Object"
res2 = Calculator.new(15,3)
puts "Values #{res2.num1} , #{res2.num2}"
puts res2.add
puts res2.substract
puts res2.multiply
puts res2.divide
puts res2.module