Rails.application.routes.draw do
  resources :users


  get 'states/:state', to: "states#show", as: "states"
  root :to => "static_pages#index"
  get '/auth/twitter/callback', to: "sessions#create"
  get '/logout', to: "sessions#destroy"
  delete '/logout', to: "sessions#destroy"
  get 'representative/:bioguide', to: "states#representative_show", as: "representative"

end
