class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction


def initialize(discount=0)
  @discount=discount
  @total=0
  @items= []
end

def add_item(item, price, optional_quantity=1)
  optional_quantity.times do
  @items<<item
end

@total += (price * optional_quantity)
self.last_transaction = (price * optional_quantity)
end

def apply_discount
  if discount !=0
  self.total -= self.total* self.discount/100
  "After the discount, the total comes to $#{self.total}."
else
  "There is no discount to apply."
end
end

def items
@items
end

def void_last_transaction
  self.total= self.total-self.last_transaction
end
end
