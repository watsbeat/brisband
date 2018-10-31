Rails.application.routes.draw do
  resources :bands
  resources :comments
  resources :items
  get 'user/:id', to: 'user#show'
  devise_for :users
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
