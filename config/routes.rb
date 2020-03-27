Rails.application.routes.draw do
  # root 'notes#index'

  resources :users
	resources :notes
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
# Rails.application.routes.draw do
#   root ‘cars#index’
#   resources :cars
#   end