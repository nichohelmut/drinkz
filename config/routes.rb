Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show] do
    resources :events, only: [:index, :show, :new, :create] do
      resources :requests, only: [:new, :create]
      resources :invitations, only: [:new, :create]
    end
  end

end
