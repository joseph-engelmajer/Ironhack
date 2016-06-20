class WordCounter


	def countwords
		puts "Enter some text so we can proccess it!"
		user_string = gets.chomp
		#Take in a user inputed string. Split into array of words
		#Calculate array length
		puts user_string.split(" ").length
	end

end