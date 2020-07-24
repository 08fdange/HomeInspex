Rails.application.routes.draw do
  devise_for :inspectors
  devise_for :clients, controllers: {omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resources :clients, only: :show, path: :profile do
    resources :inspections, only: [:index, :show, :new, :create]
  end

  resources :inspectors, only: :show, path: :profile do
    resources :inspections
  end

end
