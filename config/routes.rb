Rails.application.routes.draw do
  get 'users/show'

  get 'user/show'

  root to: 'sessions#new'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users, only: [:show]
end
