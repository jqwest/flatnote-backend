Rails.application.routes.draw do
  resources :users
  resources :tags
  resources :notes_tags
  resources :notes

  get "/login", to: "auth#login"
  post "/login", to: "auth#login"


  post "/signup", to: "users#create"

  get '/users/find_by_username', to: 'users#show'

  get "/user_notes/:user_id", to: "notes#user_notes"
  
  delete '/logout', to: "auth#logout"

  # get "/notes/:id/", to: "notes#index"
  root 'welcome#index'

end
