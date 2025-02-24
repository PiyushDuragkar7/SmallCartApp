Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :carts, only: [:show]
  resources :line_items, only: [:create]
  resources :products, only: [:index]

  root 'products#index'
end
