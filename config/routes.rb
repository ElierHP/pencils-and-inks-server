Rails.application.routes.draw do
  root "products#index"
  
  resources :users, only: [:show, :create, :update, :destroy]

  resources :products

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
