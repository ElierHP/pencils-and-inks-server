Rails.application.routes.draw do
  root "products#index"
  
  resources :users, only: [:show, :create, :update, :delete]

  resources :products
end
