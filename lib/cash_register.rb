class CashRegister
  attr_accessor :total,:discount, :price, :items , :last_transaction_amount
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

 def add_item(title, price, qty = 1)
   if qty > 1
    @items << title
  else
    
    self.total += price*qty
    @last_transaction_amount = price*qty
    @total
 end
 

def apply_discount()
  if @discount > 0
      @discount = @discount/100.to_f
      @total = @total - (@total * (@discount))
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
end

def items
  @items
end


def void_last_transaction()
end

  
end


