class TextInspectionsController < ApplicationController

	def new
		render "new"
	end

	def create
		@text = params[:text_inspection][:user_text]

		@wordcount = @text.split(" ").length

		@read_time = @wordcount/275

		@top_words = word_freq(@text)

		render "results"
	end

	private

	def word_freq(string)
  		words = string.split(' ')
  		frequency = Hash.new(0)
  		words.each { |word| frequency[word.downcase] += 1 }
		sorted_freq = frequency.sort { |l, r| r[1]<=>l[1] }
		top_words = sorted_freq[0..9]
		return top_words
	end 
		
end
