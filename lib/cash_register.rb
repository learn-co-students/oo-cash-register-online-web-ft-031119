class CashRegister
  attr_accessor :total, :discount, :items 

  def initialize(discount = 0)
    @total = 0 
    @discount = discount 
    @items = []
    @last_item = ""
    @last_price = 0 
  end
  
  def add_item(item, price, quantity = 1)
    @total += price * quantity 
    @last_price = price * quantity
    i = 0;
    while i < quantity
      @items << item
      i += 1
    end
    @last_item = item 
  end
    
  def apply_discount 
    if @discount != 0
      @total -= @total * @discount / 100 
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total -= @last_price
  end
end