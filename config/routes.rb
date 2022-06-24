Rails.application.routes.draw do
  root "products#index"
  
  resources :users, only: [:show, :create, :update, :destroy]

  resources :products
end
