Rails.application.routes.draw do
  devise_for :inspectors, controllers: { sessions: "inspectors/sessions", registrations: "inspectors/registrations"}
  devise_for :clients, controllers: {omniauth_callbacks: 'omniauth', sessions: "clients/sessions", registrations: "clients/registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"

  get '/about', to: "home#about"

  resource :client, only: :show do
    resources :inspections, only: [:index, :show, :new, :create]
  end

  resources :inspectors, only: [:index, :show] do
    resources :inspections
  end

  resources :inspections, only: [:new, :create, :edit, :update]

  post '/client/inspections/new', to: 'inspections#create'

  post '/inspectors/:inspector_id/inspections/:id/edit', to: 'inspections#update'
  post '/inspections/:id/edit', to: 'inspections#update'

  get '/inspectors/:id/bio', to: 'inspectors#bio'
  post '/inspectors/:id/bio', to: 'inspectors#edit_bio'

  get '/inspections/bydate', to: 'inspections#bydate'
  post '/inspections/bydate', to: 'inspections#bydate'

end