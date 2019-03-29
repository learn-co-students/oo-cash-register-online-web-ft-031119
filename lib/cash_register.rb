class CashRegister
    attr_accessor :total, :discount, :last
    
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        quantity.times {@items << title}
        self.last = price * quantity
        self.total += self.last
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total *= (1 - (self.discount/100.0))
            "After the discount, the total comes to $#{self.total.to_i}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last
    end
end
