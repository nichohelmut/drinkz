Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :users, only: [:new, :create, :show] do
  #   resources :events, only: [:index, :show, :new, :create] do
  #     resources :requests, only: [:new, :create]
  #     resources :invitations, only: [:new, :create]
  # resources :events, only: [:index, :new, :create, :show]

  namespace :locals do
    resources :events, only: [:index, :show, :new, :create]
    resources :users, only: [:index, :show, :new, :create]
    resources :requests, only: [:index, :show, :delete]
  end

  namespace :visitors do
    resources :events, only: [:index, :show, :new, :create]
    resources :users, only: [:index, :show, :new, :create]
    resources :requests
  end



  # resources :users
  # get '/users', to: 'users#index'
  # get '/users/:id', to: 'users#show', as: "user"



end
