Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get '/', to: 'concerts#index'
resources :concerts, only: [:show, :new, :create] do
	resources :comments, only:[:create]
end

end
