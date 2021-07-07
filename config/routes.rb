Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :products, only: [:index, :show] do
    resources :order_products, only: [:create]
    resources :orders, only: [:new, :create, :update]
  end

  resources :orders, only: [:destroy, :show, :index] 
  resources :blogs, only: [:index, :show, :new, :update, :destroy] 

end
