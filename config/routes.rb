Rails.application.routes.draw do
  resources :comments
  get 'sessions/new'
  get 'site/home'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :mountain_models
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
