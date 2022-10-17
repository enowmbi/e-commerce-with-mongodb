Rails.application.routes.draw do
  root "products#index"
  devise_for :users # do
  # member do
  resources :orders
  # end
  # end
  resources :products
end
