require_relative 'employee'

class ParentEmployee < Employee
   
    def initialize(name,leaves,email,joinning_date="02 Oct 2022")
        super(name,leaves,email)
        @joinning_date = joinning_date
    end
    
    attr_accessor :joinning_date

    def leaveIncrease
        @leaves = @leaves + 3 
    end

    def to_s
         "#{super.to_s}  joining date #{@joinning_date}"
    end
end


p_emp = ParentEmployee.new("vishal".capitalize,3,"vishal.yadav@gemsessence.com","01 Nov 2022")

puts p_emp
puts " parent Employee leaves #{p_emp.leaveIncrease}"
