Rails.application.routes.draw do
  resources :users, only:[:create, :index]
  resources :notes, only:[:craete, :index, :show, :update, :destroy]
  resources :tags
  resources :notes_tags

  post "/login", to: "auth#login"

  post "/signup", to: "users#create"

  get "/profile", to: "users#profile"

  get "/auto_login", to: "auth#auto_login"

end
