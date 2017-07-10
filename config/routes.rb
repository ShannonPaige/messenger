Rails.application.routes.draw do
  root to: 'sessions#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users, only: [:show]
  resources :messages, only: [:index, :create]
end
