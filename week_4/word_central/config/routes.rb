Rails.application.routes.draw do

	 get '/' => 'site#home', as: :home
	 get '/text_inspections/new' => 'text_inspections#new'
	 post '/text_inspections' => 'text_inspections#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
