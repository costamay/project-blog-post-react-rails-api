Rails.application.routes.draw do
  post "signup/", to: "users#create"
  get "/me", to: "users#show"
  post "login/", to: "sessions#create"
  delete "logout/", to: "sessions#destroy"

  resources :comments, only: [:create]
  resources :categories, only: [:index, :create]
  resources :posts
  resources :profiles
 
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
