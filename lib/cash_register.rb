class CashRegister
  attr_accessor :total
  attr_reader  :discount, :items
  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end
  def add_item(title,price,quantity=1)
    @last_transaction = [title,price,quantity]
    quantity.times {@items << title}
    @total += price*quantity
  end
  def apply_discount
    if @discount != 0
      @total -= @total * @discount/100
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
  def void_last_transaction
    title = @last_transaction[0]
    price = @last_transaction[1]
    quantity = @last_transaction[2]
    quantity.times {@items.delete(title)}
    @total -= price*quantity
  end

end
