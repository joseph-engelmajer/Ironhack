#recieves sentence returns array, alphebetize array with sort 
#method

def word_sort(sentence) 
	split_sent = sentence.split(/\W/)
	return split_sent.sort { |a,b| a.upcase <=> b.upcase}
end

puts word_sort("Yo, my dude. What's the deal with these confusing ass precious stones? Ruby ain't a precious stone dawg, it's a programming language!!! Da fuck is a programming language?")