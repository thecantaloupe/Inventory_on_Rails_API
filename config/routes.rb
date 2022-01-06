Rails.application.routes.draw do
  resources :inventory_item_selections
  resources :inventory_items
  resources :warehouses
  resource :users, only: [:create]
  post "/login", to: "users#login"
  get "/auto_login", to: "users#auto_login"
end
