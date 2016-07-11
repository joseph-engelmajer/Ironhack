class CommentsController < ApplicationController

	def create
		my_concert = Concert.find(params[:concert_id])
		@my_comment = my_concert.comments.new(
			:content => params[:comment][:content],
			:name => params[:comment][:name])
		@my_comment.save
		redirect_to "/concerts/#{my_concert.id}"
	end

end
