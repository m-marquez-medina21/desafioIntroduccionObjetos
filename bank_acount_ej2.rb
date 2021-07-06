class BankAcount
    attr_accessor :bank_name, :acount_number, :balance
    def initialize(bank_name, acount_number, balance = 0)
        @bank_name = bank_name
        @acount_number = acount_number
        @balance = balance
    end

    def transfer(amount, another_account)
        @balance = @balance - amount
        another_account.balance = another_account.balance + amount
    end
end

acount1 = BankAcount.new('Banco Estado', 12121212, 5000)
acount2 = BankAcount.new('Banco Chile', 15151515, 5000)
acount3 = BankAcount.new('Banco Ripley', 25252525, 15000)

acount1.transfer(5000, acount2)
pp acount1.inspect
pp acount2.inspect

class Username
    attr_accessor :user_name
    def initialize(user_name, bank_acount)
        @user_name = user_name
        @bank_acount = bank_acount
    end

    def total_balance
        total = 0
        @bank_acount.each do |bank_acount|
            total += bank_acount.balance
        end
        total
    end
end

user1 = Username.new('Mauricio', [acount3])
pp user1.total_balance.inspect