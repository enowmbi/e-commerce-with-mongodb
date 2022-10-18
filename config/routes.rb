Rails.application.routes.draw do
  root "products#index"

  resources :users, only: :show

  devise_for :user

  resources :orders

  resources :products
end
