class SandwichViewsController < ApplicationController
	before_action :authenticate_user!, only: [:show, :index]

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
