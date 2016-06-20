class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("JoJo's place", "Ibiza", 8, 75),
  Home.new("Min's place", "New York", 2, 59),
  Home.new("Waylee's place", "Shanghai", 1, 30),
  Home.new("Sebastian's place", "Cartagena", 4, 55),
  Home.new("Dan's place", "Moscow", 6, 40)
]

#homes.each do |hm|
 # puts "#{hm.name} in #{hm.city}"
  #puts "Price: $#{hm.price} a night "
#end
#_________________________________________________________________________
def sort_by_price(homes, option=1)#1 is low to high, 2 is high to low
  
  if option==1
    sorted_homes = homes.sort{|x,y| x.price <=> y.price}
  elsif option==2
    sorted_homes = homes.sort{|x,y| y.price <=> x.price}
  end
sorted_homes
end



def sort_by_capacity(homes)
  sorted_homes_capacity = homes.sort{|x,y| y.capacity <=> x.capacity}
  sorted_homes_capacity
end


def print_array(array)

  array.each do |hm|
  puts "#{hm.name} in #{hm.city} with a capacity of #{hm.capacity}"
  puts "Price: $#{hm.price} a night "
  end
end

def city_filter_result(homes, city_filter)
  city_filter_result = homes.select { |homes| homes.city.downcase == city_filter}
  city_filter_result
end
#___________________________________________________________________________

#program begins here

sorted_homes = sort_by_price(homes)
print_array(sorted_homes)

 puts "How would you like to filter results?
 Price high-to-low type: highlow
 Capacity type: capacity"

filter = gets.chomp.downcase

if filter == "highlow"
     print_array(sort_by_price(homes,"2"))
 	end
	elsif filter == "capacity"
		 print_array(sort_by_capacity(homes))
	  end
	else 
		print_array(sort_by_price(homes,"1"))
	end
end

puts "Please select one of the cities to view our available accomadations. We have homes available in: San Juan, Seville, Pittsburgh, Malaga, Ibiza, New York, Shanghai, Cartagena, and Moscow."

city_filter = gets.chomp.downcase

print_array(city_filter_result(homes, city_filter))

city_filter_result.each do |hm|
  puts "#{hm.name} in #{hm.city}"
  puts "Price: $#{hm.price} a night "
end
