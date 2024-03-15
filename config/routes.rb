Rails.application.routes.draw do

  devise_for :users
  mount ActionCable.server => '/cable'
  
  ## Root route
  root 'pages#index'

  resources :notifications
end
