Rails.application.routes.draw do
  resources :reviews
  root "products#index"
  
  resources :users

  resources :products
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
