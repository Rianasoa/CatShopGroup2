Rails.application.routes.draw do
	resources :items
   root to:'items#index'
  devise_for :users
  resources :users, only: [:show,:update]
  resources :carts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
