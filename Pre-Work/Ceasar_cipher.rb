def ceaser_cipher(input, x)
	array = []
	coded_message = input.split("")
	coded_message.each do |letter|
		decoded_message = (letter.ord + x)
		if 
			letter.ord == 32
			decoded_message = 32
		elsif
			decoded_message < 97 
			decoded_message = decoded_message + 26
		end
		array << decoded_message.chr
	end
	array.join
end

ceaser_cipher("p| uhdo qdph lv grqdog gxfn", -3)