# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: [:new, :create, :show] do
  #   resources :events, only: [:index, :show, :new, :create] do
  #     resources :requests, only: [:new, :create]
  #     resources :invitations, only: [:new, :create]
  # resources :events, only: [:index, :new, :create, :show]

  namespace :locals do
    # end
    resources :requests, only: :show do
      resources :messages, only: %i[index new create show]
    end

    # /requests/345/messages/new

    resources :events, only: %i[index show new create destroy] do
      resources :users, only: %i[index show]
      resources :requests, only: %i[new create]
    end
  end

  namespace :visitors do
    resources :requests, only: :show do
      resources :messages, only: %i[index new create]
    end

    # /requests/345/messages/new

    resources :events, only: %i[index show new create] do
      resources :users, only: %i[index show]
      resources :requests, only: %i[new create]
    end
  end
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'pages#home'
end

# resources :users
# get '/users', to: 'users#index'
# get '/users/:id', to: 'users#show', as: "user"
