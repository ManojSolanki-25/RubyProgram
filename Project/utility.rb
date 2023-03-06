
module Utility
    def self.create_account_no
        account_no = Random.rand(1001..1050)
        # @@bank_hash.sort.each do |key|
        #     if(account_no == key)
        #         @account_no =account_no
        #     end 
        # end
        if($bank_hash.has_key?(account_no))
            account_no=Random.rand(1001..1050)
        end
        return account_no
    end
end