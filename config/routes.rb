Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users do

    resources :orders do
      resources :boletos
    end
  end
  resources :events
  resources :tickets

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
