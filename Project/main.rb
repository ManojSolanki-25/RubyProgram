
class Main
    def customer_details(customer_hash)
        puts "#{customer_hash[:name]} Details : "
        customer_hash.each do |key,value|
            puts "#{key} : #{value}"
        end
    end
    
    def check_balance
        @customer_hash[:balance]
    end

    def credit_amount
        puts "Enter Amount For Credit: "
        bal = gets.to_i
        @customer_hash[:balance]+=bal
    end

    def debit_amount
        puts "Enter Amount : "
        bal = gets.to_i
        if(@customer_hash[:balance]>=bal)
            @customer_hash[:balance]-=bal
        else
            puts "Insufficient Amount"
        end
    end

    def customer_menu(customer_hash)
        @customer_hash = customer_hash
        puts "WELCOME TO #{@customer_hash[:name]} DashBoard"
        while true
            puts "\n\nEnter 1 for Check Balance "
            puts "Enter 2 for Credit Amount"
            puts "Enter 3 for Debit Amount"
            puts "Enter 4 for Show Details"
            puts "Enter 5 for Exit "
            puts "Enter Your Choice :"
            choice =gets.to_i
            case choice
            when 1
                puts "Available Balance : #{check_balance}"
            when 2
                credit_amount
                puts "Amount Credited Successfully."
            when 3
               debit_amount
               puts "Amount Debited Successfully."
            when 4 
                customer_details(@customer_hash)
            when 5
                break
            else
                puts "You have entered wrong choice please re_enter"
                next 
            end
        end    
    end    
end

if __FILE__ == $0
end

