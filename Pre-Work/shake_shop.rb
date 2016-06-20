class MilkShake
	attr_reader :Ingredient
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end
  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end
  def price_of_milkshake
  total_price_of_milkshake = @base_price
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
   total_price_of_milkshake
	end
end

class Ingredient
	attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class ShakeShop
	def initialize
		@milkshake_list = []
	end
	def add_milkshakes(milkshake)
		@milkshake_list.push(milkshake)
	end
	def checkout
		total_price = 0
		@milkshake_list.each do |shake|
			total_price += shake.price_of_milkshake
		end 
		total_price
		puts "Your total is $#{total_price}" 
	end	
		
end

#Ingredients List
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
peanut_butter = Ingredient.new("Peanut Butter", 2)
marshmellows = Ingredient.new("Marshmellow", 1)
#---------
#Milkshake List
nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

jojos_milkshake = MilkShake.new
jojos_milkshake.add_ingredient(peanut_butter)
jojos_milkshake.add_ingredient(banana)
jojos_milkshake.add_ingredient(chocolate_chips)

waylees_milkshake = MilkShake.new
waylees_milkshake.add_ingredient(chocolate_chips)
waylees_milkshake.add_ingredient(peanut_butter)

#---------
#Shop
shake_the_world = ShakeShop.new
shake_the_world.add_milkshakes(jojos_milkshake)
shake_the_world.add_milkshakes(nizars_milkshake)
shake_the_world.add_milkshakes(waylees_milkshake)


puts shake_the_world.checkout