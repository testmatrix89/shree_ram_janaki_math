Rails.application.routes.draw do
  get 'checkout', to: 'checkout#index', as: :checkout
  get 'carts/show'
  resources :pages, only:[:index, :details, :show]
  resources :products
  resources :order_items
  resource :carts, only:[:show]
  
  resources :subscribers
  get 'details', to: 'pages#details', as: :product_details
  get 'mattresses', to: 'pages#mattresses', as: :mattresses
  get 'diningtables', to: 'pages#diningtables', as: :diningtables
  get 'sofas', to: 'pages#sofas', as: :sofas
  get 'cots', to: 'pages#cots', as: :cots
  resources :contacts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  #get 'homes/index'
  #post 'homes/index'
  
end
