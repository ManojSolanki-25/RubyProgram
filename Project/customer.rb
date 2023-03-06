class Customer
    def initialize(name,father_name,address,mobile,aadhar_number)
        @name=name
        @father_name=father_name
        @address=address
        @mobile=mobile
        @aadhar_number=aadhar_number
    end
    attr_accessor:name
    attr_accessor:father_name
    attr_accessor:address
    attr_accessor:mobile
    attr_accessor:aadhar_number

    def to_s
        "Customer :\n\nName : #{@name}\nFather Name : #{@father_name}\nAddress : #{@address}\nMobile : #{@mobile}\nAadhar Number : #{@aadhar_number}"
    end

    def
         
    end
end


if __FILE__ == $0
    cust = Customer.new("Manoj Solanki","Umendra Singh Solanki","Gurudwara Ring Road , Indore","8103624619","5369 0754 4615")
    puts cust
end