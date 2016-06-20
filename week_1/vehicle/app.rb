require_relative("vehicle.rb")

truck = Truck.new
coupe = Coupe.new
motorcycle = Motorcycle.new
trex = TRex.new


class WheelCounter
	def initialize
		@cars = [ ]
	end

	def add_cars (vehicle)
		@cars.push(vehicle)
	end

	def wheel_sum
		sum = 0
		@cars.each do |car|
			sum += car.wheels
		end	
		sum 
	end
end	

wheel_counter = WheelCounter.new

wheel_counter.add_cars(truck)
wheel_counter.add_cars(trex)
wheel_counter.add_cars(motorcycle)
wheel_counter.add_cars(coupe)

puts wheel_counter.wheel_sum