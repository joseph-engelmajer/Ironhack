class StringCalc
	def add (number_string)
		array = number_string.split(",") 
		
		array[0].to_i + array[1].to_i
	end
end