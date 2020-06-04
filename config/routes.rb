Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :events
  resources :sessions, only: [:create, :new, :destroy, :show]
  get '/signup', to: 'users#new'
  get '/logout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
  root 'events#index'
end
