class AsciisController < ApplicationController

	def new
		render 'new'
	end

	def create
		@text = params[:ascii_text][:user_text]
		fancy = Artii::Base.new :font => 'slant'
		@fancy_word = fancy.asciify(@text)
		render 'art' 
	end

end
