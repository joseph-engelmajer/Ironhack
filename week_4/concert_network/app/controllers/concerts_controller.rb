class ConcertsController < ApplicationController

#===========================================================================================
#===========================================================================================

	def index
		@todays_concerts_array = Concert.where(date: DateTime.current.beginning_of_day..DateTime.current.end_of_day)
		@months_concerts_array = Concert.where(date: DateTime.current..DateTime.current + 30.days)
		@months_concerts_ordered_array = @months_concerts_array.order(date: :asc)
		render "index"	
	end

#===========================================================================================
#===========================================================================================

	def new
		@my_concert=Concert.new
		render "new"
	end

#===========================================================================================
#===========================================================================================

	def show
		@my_concert = Concert.find(params[:id])
		render "show"
	end

#===========================================================================================
#===========================================================================================

	def create
		@my_concert = Concert.new(
			:artist => params[:concert][:artist],
			:venue => params[:concert][:venue],
			:city => params[:concert][:city],
			:date => params[:concert][:date],
			:price => params[:concert][:price],
			:description => params[:concert][:description],
			)
		@my_concert.save
		redirect_to "/concerts/#{@my_concert.id}"
	end

#===========================================================================================
#===========================================================================================

end
