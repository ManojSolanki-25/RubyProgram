
require_relative 'utility'
require_relative 'main'

$bank_hash = Hash.new
class Bank 
    include Utility
    @@count_customer = 0

    # def initialize(name,father_name,address,mobile,aadhar_number)
    #     @name=name
    #     @father_name=father_name
    #     @address=address
    #     @mobile=mobile
    #     @aadhar_number=aadhar_number
    # end
    def initialize(*args)
        size=args.size
        case size 
        when 0 
            "size 0 "
        else 
            @name=args[0]
            @father_name=args[1]
            @address=args[2]
            @mobile=args[3]
            @aadhar_number=args[4]
        end
    end
    attr_accessor:name
    attr_accessor:father_name
    attr_accessor:address
    attr_accessor:mobile
    attr_accessor:aadhar_number

    def add_customer
        @@count_customer += 1
        @balance=0
        @account_no=Utility.create_account_no
        @customer_hash = {:name => @name,:father_name => @father_name , :address => @address , :mobile => @mobile ,:aadhar_number => @aadhar_number ,:balance => @balance ,:account_no => @account_no}
        $bank_hash.store(@account_no,@customer_hash)
    end

    def show_bank_customer
        # puts "All Customer Details : \n\n"
        puts "Bank hash Size #{$bank_hash.size}"
        $bank_hash.each do |key,value|
            # puts "#{key} : #{value}"
            puts "Customer Detail : \n"
            value.each do |key,value|
                puts "#{key} : #{value}"
            end
            puts "\n\n"
        end 
    end

    def transaction
        puts "Enter Your Account Number : "
        account_no = gets.to_i
        puts "account number #{account_no}"
        if($bank_hash.has_key?(account_no))
            customer_hash = $bank_hash[account_no]
            Main.new.customer_menu(customer_hash)
        else
            puts "account number is not exist in our bank.!!"
        end
    end

    def total_customer
        $bank_hash.size
    end

    def total_fund
        total_balance=0
        $bank_hash.each do |key,value|
            total_balance += value[:balance]
        end
        return total_balance
    end
    
    def filter_customer
        puts "Customer who have left 300 and less than 300 rupee in account\n\n"
        $bank_hash.each do |key,value|
            if(value[:balance]<=300)
                Main.new.customer_details(value)
                puts "\n"
            end
        end
    end

    def to_s
        "Customer Detail : \n\nName : #{@name}\nFather Name : #{@father_name}\nAddress : #{@address}\nMobile : #{@mobile}\nAadhar Number : #{@aadhar_number}\nAccount Number : #{@account_no}\nBalance : #{@balance}"
    end
end

if __FILE__ == $0
    puts "WELCOME TO BANK \n\n"
    while true
        puts "\n\nEnter 1 for Add Customer"
        puts "Enter 2 for Show Cusomer"
        puts "Enter 3 for Transaction"
        puts "Enter 4 for Total Customer "
        puts "Enter 5 for Total Balance Of All Customer"
        puts "Enter 6 for Filter Customer"
        puts "Enter 7 for Exit"
        puts "Enter Your Choice :"
        choice =gets.to_i
        case choice
        when 1
            bank1 = Bank.new("Manoj Solanki","Umendra Singh Solanki","Gurudwara Ring Road , Indore","8103624619","5369 0754 4615")
            bank1.add_customer
            bank2 = Bank.new("Rohit Kushwah","Balram Kushwah","khandawa Naka ,Indore","7909786391","4217 6889 6743")
            bank2.add_customer
            bank3 = Bank.new("Amit maheshwari","Sanjay Maheshwari","Sarafa Bazar harsola ,Indore","8358993503","1234 1234 1234")
            bank3.add_customer
            bank4 = Bank.new("Vishal Yadav","Vishvanath Yadav","Pithampur","8602530182","1234 1234 1234")
            bank4.add_customer
            bank5 = Bank.new("Rachana Sahani","Lalji Ram Sahani","Indorama","9981684239","2097 1687 9379")
            bank5.add_customer
            bank6 = Bank.new("Vishal Soni","Mahesh Soni","sajapur","9754341008","6753 7861 5749")
            bank6.add_customer
            puts "Data Entry Successfully...!!!"
        when 2
            Bank.new.show_bank_customer
        when 3
            Bank.new.transaction
        when 4
            puts "\n\nTotal Customer of Bank #{Bank.new.total_customer}\n"
        when 5
            puts "\n\nTotal Fund of bank #{Bank.new.total_fund}\n"
        when 6
            Bank.new.filter_customer
        when 7
            break
        else
            puts "You have entered wrong choice please re_enter"
            next 
        end
    end
end

# bank =Bank.new("Manoj Solanki","Umendra Singh Solanki","Gurudwara Ring Road , Indore","8103624619","5369 0754 4615") 
# puts bank
# bank1=Bank.new
# puts bank1