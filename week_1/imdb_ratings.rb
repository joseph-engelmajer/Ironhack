require("imdb")


the_search = Imdb::Search.new("")

first_result = the_search.movies[0]

puts "Got a total of #{the_search.movies.length} results."
puts "First Result"
p first_result