require_relative 'employee'

describe 'Employee' do
    it "employee is present or not " do
        emp = Employee.new("Manoj",20,"manoj.solanki@gmes.com")
         bool = emp.check
         expect(bool).to be_truthy
    end
end