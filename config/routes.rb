Rails.application.routes.draw do
  resources :hike_sign_ups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :trail_lists
  resources :hikes
  resources :trails
  resources :likes
  get '/sign_in', to: 'sessions#sign_in'
  root 'sessions#sign_in'
  #code below is not rauls just a try in response to an error
  get '/sessions', to: 'sessions#create'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
end
  
