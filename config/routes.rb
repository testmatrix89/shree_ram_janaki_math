Rails.application.routes.draw do
  root 'pages#index'
  resources :programs, path: 'उत्सव'
  resources :pages, only:[:index, :show]
  resources :products
  resources :dev_sthans, path: 'देव-स्थान', only:[:index, :show]
  #get 'देव-स्थान-विवरण', to: 'dev_sthans#index', as: :dev_sthans
  resources :subscribers
  resources :contacts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
