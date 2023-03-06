puts "Welcome in class Tutorail "

class Employee
    def initialize(name,salary=8000)
        @name = name.capitalize
        @salary = salary 
    end

    # def name
    #     @name
    # end

    attr_reader :name

    def name=nm
        @name =nm.capitalize
    end

    #attr_writer :name

    #attr_accessor :name

    def to_s
        "Employee name is #{@name} and salary #{@salary}"
    end 

end
if __FILE__ == $0
    emp = Employee.new("manoj",8000)
    puts emp.name
    puts emp
    emp.name="amit"
    puts emp.name
    puts emp

    emp1 = Employee.new("Rohit")
    puts emp1.name
    puts emp1
end