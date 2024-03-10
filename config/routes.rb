Rails.application.routes.draw do

  mount ActionCable.server => '/cable'
  
  ## Root route
  root 'pages#index'
end
