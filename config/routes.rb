Rails.application.routes.draw do
  resources :users
  # resources :states, only: [:show]

  get 'states/:state', to: "states#show", as: "states"
  root "static_pages#index"
  get '/auth/twitter/callback', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  delete '/logout', to: "sessions#destroy"
end
