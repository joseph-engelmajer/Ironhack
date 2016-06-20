class ShoppingCart
	attr_reader :Item
  def initialize
    @items = []
  end
  def add_item(item)
      @items.push(item)
  end
  def Checkout
  		total = 0
		@items.each do |item|
			total += item.price
		end
		if @items.size >= 5
			total * 0.9
		else 
		total
		end
		return total
	end
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end

  def price
      @price
  end
end

class Houseware < Item
	attr_reader :price 
  def price
      if @price > 100
      	return @price*0.95
      else
      	return @price
      end
  end
end

class Fruit < Item
	attr_reader :price
  def price
  	now=Time.now
      if now.saturday? || now.sunday?
      	return @price*0.90
      else
      	return @price
      end
  end
end

banana = Fruit.new("banana", 10)
orange_juice = Fruit.new("OJ", 10)
rice = Item.new("rice", 1)
vacuum_cleaner = Houseware.new("vacuum", 150)
anchovies = Item.new("anchovies", 2)


jojos_cart=ShoppingCart.new
jojos_cart.add_item(orange_juice)
jojos_cart.add_item(rice)
jojos_cart.Checkout

puts "Your total today is $#{ jojos_cart.Checkout }"

