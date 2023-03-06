puts "Welcome to my Array file"

require_relative 'department'

emp1=Employee.new("Manoj",9,"manoj.solanki@gems.com")
emp2=Employee.new("Rohit",6,"rohit.kushwah@gems.com")
emp3=Employee.new("Amit",0,"amit.maheshwari@gems.com")
emp4=Employee.new("Vishal",7,"vishal.soni@gems.com")

name = Array.new

name.push(emp1)
name.push(emp2)
name.push(emp3)
name[3]=emp4
puts "\n Employee Deatails \n\n " 
name.each do|em|
    puts em
end

puts "\nDepartment Deatails : \n"
department1 = Department.new("Fressi")
department1.addEmployee(emp1)
department1.addEmployee(emp2)
department1.addEmployee(emp3)
department1.show
# name[5]="Rohit"

# puts name
# puts "Array itrate by array loop" 
# name.each do|n|
#     puts n
# end