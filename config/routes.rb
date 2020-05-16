Rails.application.routes.draw do
  resources :users, only: [:create, :index]
  resources :notes
  resources :tags
  resources :notes_tags

  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  get '/profile', to: 'users#profile'
  post '/users', to: 'users#index'
  get '/user_is_authed', to: "auth#user_is_authed"
end
