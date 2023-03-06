module Demo
    def name
        "manoj solanki"
    end
end

class Employee
    include Demo
    def initialize(name,leaves,email) 
        @name=name
        @leaves=leaves
        @email=email
        @totalDays=22
        @Totalsalary=8000.00
    end

    attr_accessor :name
    attr_accessor :leaves
    attr_accessor :email

    def check
        @name == "Manoj"
    end


    def leaveIncrease
        @leaves += 1
    end

    def leaveDecrease
        @leaves -= 1
    end

    def paySalary
        a=@Totalsalary/@totalDays
        a*(@totalDays-@leaves)
    end

    def to_s
        "Employee Name #{@name} , leaves #{@leaves} PaySalary #{paySalary} and 1 day Leaves increase leave #{leaveIncrease} so paySalary #{paySalary}"        
    end

end

if __FILE__ == $0
    emp = Employee.new("manoj",5,"manoj.solanki@gems.com")
    puts emp.name
    puts emp.leaves
    puts emp
end
