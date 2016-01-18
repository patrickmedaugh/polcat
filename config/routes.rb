Rails.application.routes.draw do
  root :to => "static_pages#index"
  resources :users

  get 'states/:state', to: "states#show", as: "states"

  get 'representative/:bioguide', to: "states#representative_show", as: "representative"

  get '/auth/twitter/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  delete '/logout', to: 'sessions#destroy'
  get '/current_user_signed_in', to: 'sessions#show'

end
