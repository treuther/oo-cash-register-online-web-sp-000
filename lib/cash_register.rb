class CashRegister
  
attr_accessor :total, :discount, :price, :total_items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @total_items = []
end

def add_item(item, price, quantity = 1)
  @price = price
  @total += price * quantity
  counter = 0
  while counter < quantity
    @total_items << item
    counter += 1
  end
end

def apply_discount
  if @discount > 0
    savings = (@total*discount)/100
    @total -= savings
   return "After the discount, the total comes to $#{total}."
  else
  return  "There is no discount to apply."
  end
end

def items
  @total_items
end

def void_last_transaction
  @total_items -= @price
end

end
