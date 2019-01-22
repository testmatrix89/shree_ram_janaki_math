Rails.application.routes.draw do
  resources :subscribers
  resources :mattresses
  resources :diningtables
  resources :sofas
  resources :cots
  resources :homes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'
  #get 'homes/index'
  #post 'homes/index'
  
end
