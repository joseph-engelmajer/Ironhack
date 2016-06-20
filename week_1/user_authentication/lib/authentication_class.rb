
require_relative ("word_proccess_class.rb")

class Authentication
	def initialize 
		@real_username = "JoJo"
		@real_password = "yeathatme"
	end		

	def authenticate
		puts "please log in"

puts "Username:"
username = gets.chomp

puts "Password"
password = gets.chomp

		if username == @real_username && password == @real_password
		 puts "Welcome JoJo!"
		 login_success = WordCounter.new
		 login_success.countwords
		else puts "incorrect credentials. You aint got to go home but you got to get up out of here"
		end
	end
end