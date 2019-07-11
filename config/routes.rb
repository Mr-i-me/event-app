Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users

  # resources :orders
  # resources :boletos

  resources :events do
    resources :tickets
  end
  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end
end
# resources :orders, only: %i[ new create ]
# end
#
# resources :orders, only: %i[index show update delete edit]
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
