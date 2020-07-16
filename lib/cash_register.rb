
class CashRegister
  attr_accessor :total, :discount, :items, :last_tot
  
  def initialize(discount=0)
    @total=0 
    @discount=discount
    @items=[]
  end 
  
  def add_item (title, price, quant=1)
    @last_tot=@total
    @total+=price*quant
    quant.times {@items << title}
  end
  
  def apply_discount
    if @discount==0
      "There is no discount to apply."
    else
      @total=@total.to_f - @total.to_f * @discount.to_f/100
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def void_last_transaction
    @total=@last_tot
  end
end

