Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  
  root to: 'sessions#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users, only: [:show]
  resources :messages, only: [:index, :create]
end
