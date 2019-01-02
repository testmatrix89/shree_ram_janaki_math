Rails.application.routes.draw do
  resources :subscribers
  resources :mattresses
  resources :diningtables
  resources :sofas
  resources :cots
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'
  get 'home/index'
  post 'home/index'
  
end
