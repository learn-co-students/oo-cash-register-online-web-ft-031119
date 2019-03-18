class CashRegister
  attr_accessor :total, :discount, :items 

  def initialize(discount = false)
    self.total = 0 
    self.discount = discount 
    @items = []
    @last_item = ""
    @last_price = 0 
  end
  
  def add_item(item, price, quantity = 1)
    self.total += price * quantity 
    @last_price = price * quantity
    i = 0;
    while i < quantity
      @items << item
      i += 1
    end
    @last_item = item 
  end
    
  def apply_discount 
    if self.discount 
      self.total = self.total * 0.8 
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    self.total = self.total - @last_price
  end
end