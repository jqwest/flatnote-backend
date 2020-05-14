Rails.application.routes.draw do
  resources :users, only: [:create]
	resources :notes
  resources :tags
  resources :notes_tags

  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
 
end
