Rails.application.routes.draw do
  root "products#index"

  resources :users, only: :show do
    member do
      resource :cart, only: %I[create show] do
        member do
          post :increase_item_count
          post :decrease_item_count
        end
      end
    end
  end

  devise_for :user

  resources :orders do
    resources :payments
    member do
      get :success
      get :failure
    end
  end

  resources :products do
    resources :skus
  end

  resources :checkouts, only: :create
end
