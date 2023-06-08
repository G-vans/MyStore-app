Rails.application.routes.draw do
  resources :orders
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
