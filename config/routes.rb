Rails.application.routes.draw do
  root 'pages#index'
  resources :suvichars, path: 'सुविचार', only:[:index, :show]
  get 'गैलरी', to: 'albums#index', as: :albums
  resources :programs, path: 'उत्सव'
  resources :pages, only:[:index, :show]
  resources :sanskrities, path: 'शिक्षा-संस्कृति', only:[:index, :show]
  resources :dev_sthans, path: 'देव-स्थान', only:[:index, :show]
  #get 'देव-स्थान-विवरण', to: 'dev_sthans#index', as: :dev_sthans
  resources :subscribers
  resources :contacts
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
