class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
		render "index"	   
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredient = Ingredient.all
		render "show"
	end


end
