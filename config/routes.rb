Rails.application.routes.draw do
  devise_for :inspectors
  devise_for :clients, controllers: {omniauth_callbacks: 'omniauth'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  resource :client, only: :show, path: :profile do
    resources :inspections, only: [:index, :show, :new, :create]
  end

  resources :inspectors, only: :show do
    resources :inspections
  end

  resources :inspections, only: [:new, :create, :edit, :update]

  post '/inspections/new', to: 'inspections#create'

  post '/inspectors/:inspector_id/inspections/:id/edit', to: 'inspections#update'

end
