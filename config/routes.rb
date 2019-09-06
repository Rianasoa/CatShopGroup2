Rails.application.routes.draw do
	resources :items
  resources :carts
  resources :charges, only: [:new, :create]
	devise_for :users
	resources :users, only: [:show, :edit, :update] do
    resources :avatars, only: [:create]

  end
   root to:'items#index'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

