 require_relative 'employee'
 
 class Department
    def initialize(departmentName)
        @departmentName=departmentName
        @employee = Array.new
    end

    attr_accessor :departmentName

    def addEmployee(emp)
        @employee << emp        
    end

    def show
        puts "Departmnet Name #{@departmentName} and Employees"
        @employee.each do |variable|
            puts "\n #{variable} \n"  
        end        
    end

end

if __FILE__ == $0
    dpt = Department.new("Mentor")
    emp = Employee.new("manoj",8,"manoj.solanki@gems.com")
    puts dpt.departmentName
    dpt.addEmployee(emp)
    dpt.show
end
puts __FILE__ == $0

