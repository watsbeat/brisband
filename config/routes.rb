Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :bands, :comments, :items, :charges, :messages
  
  resources :conversations do
    resources :messages

    collection do
      get :inbox
      get :all, action: :index
      get :sent
      get :trash
    end
  end

  get 'user/:id', to: 'user#show', as: 'user'
  devise_for :users
  get 'home/guidelines'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
