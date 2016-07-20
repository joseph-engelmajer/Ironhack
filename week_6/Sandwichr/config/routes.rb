Rails.application.routes.draw do

  devise_for :users, path_names: {sign_in: "login", sign_up: "signup"}

resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
	    resources :sandwiches
	    resources :ingredients
	    post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
	end

get '/' => 'static_pages#index'


  # resources :ingredients, only: [:create, :show, :destroy]
  # resources :sandwiches, except: [:new, :edit]

  # post "/sandwiches/:id/ingredients/add", to: "sandwiches#add_ingredient"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
