Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  # resources :orders
  # resources :boletos

  resources :events
  resources :tickets do
  resources :orders, only: %i[ new create ]
end
  #
resources :orders, only: %i[index show update delete edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
