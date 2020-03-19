Rails.application.routes.draw do
  get 'site/home'

  resources :mountain_models
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
