Rails.application.routes.draw do
  resources :ingredients, only: [:create, :show, :destroy]
  resources :sandwiches, except: [:new, :edit]

  post "/sandwiches/:id/ingredients/add", to: "sandwiches#add_ingredient"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
