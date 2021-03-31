Rails.application.routes.draw do

  root 'application#home'

  resources :track_times
  resources :drivers
  resources :tracks


  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  get '/signout', to: 'sessions#destroy'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
