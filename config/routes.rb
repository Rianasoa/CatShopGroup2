Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  get 'orders/create'
  get 'orders/index'
  get 'admins/index'
	resources :items
  resources :carts
  resources :charges, only: [:new, :create]
	devise_for :users
	resources :users, only: [:show, :edit, :update]
   root to:'items#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

