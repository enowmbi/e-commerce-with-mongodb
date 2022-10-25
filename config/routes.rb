Rails.application.routes.draw do
  root "products#index"

  resources :users, only: :show do
    member do
      resource :cart, only: [:create, :show]
    end
  end

  devise_for :user

  resources :orders

  resources :products do
    resources :skus
  end
end
