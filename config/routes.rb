Rails.application.routes.draw do
  resources :bands, :comments, :items, :charges
  get 'user/:id', to: 'user#show', as: 'user'
  devise_for :users
  get 'home/guidelines'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
