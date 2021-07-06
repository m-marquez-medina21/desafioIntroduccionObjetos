class BankAcount
    attr_accessor :name_user
    attr_reader :vip, :number_acount
    def initialize(name_user, number_acount, vip = 0)
        if number_acount.digits.count != 8
            raise RangeError, "Número de dígitos incorrecto"
        end

        if !(0..1).include? (vip)
            raise RangeError, "Número VIP incorrecto"
        end
        @name_user = name_user
        @number_acount = number_acount
        @vip = vip
    end
    def acount_vip
        "#{self.vip}-#{self.number_acount}"
    end
end

results = BankAcount.new("marcos", 87654321, 1)

puts results.name_user
puts results.acount_vip