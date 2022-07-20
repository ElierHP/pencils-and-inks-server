Rails.application.routes.draw do
  root "products#index"
  
  resources :users

  resources :products
  get "/latest", to: "products#latest"
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
