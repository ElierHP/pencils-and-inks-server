Rails.application.routes.draw do
  root "products#index"
  
  resources :users

  resources :products
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
