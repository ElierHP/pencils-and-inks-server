Rails.application.routes.draw do
  root "products#index"
  
  resources :users

  resources :products
  
  resources :reviews

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :cart, only: %i[ index create destroy update ]
  delete "/cart", to: "cart#destroy_cart"

  resources :wishlists, only: %i[index create destroy]
  patch "/wishlists", to: "wishlists#update"
  delete "/wishlists", to: "wishlists#destroy_wishlist"
end
