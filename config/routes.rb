Rails.application.routes.draw do
  root "products#index"

  resources :users, only: :show do
    member do
      resource :carts, only: [:create]
    end
  end

  devise_for :user

  resources :orders

  resources :products do
    resources :skus
  end
end
