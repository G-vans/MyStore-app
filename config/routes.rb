Rails.application.routes.draw do
  devise_for :controllers
  resources :orders
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/cart', to: 'products#add_to_cart', as: 'cart'
  get '/collect', to: 'products#cart', as: 'collect'
  get '/remove', to: 'products#remove_from_cart', as: 'remove'
  get '/trash', to: 'products#destroy', as: 'trash'
  # Defines the root path route ("/")
  root "home#index"
end
