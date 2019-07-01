Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users

  # resources :orders
  resources :boletos
  resources :events do
    resources :tickets, only: [ :new, :create ]
  end
resources :tickets, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
