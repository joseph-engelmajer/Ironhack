class TextInspectionsController < ApplicationController

	def new
		render "new"
	end

	def create
		@text = params[:text_inspection][:user_text]

		@wordcount = @text.split(" ").length

		@read_time = @wordcount/275

		render "results"
	end
		
end
