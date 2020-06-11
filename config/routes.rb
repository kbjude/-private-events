Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  resources :events, only: %i[new create show index]
  resources :sessions, only: %i[create new destroy ]
  get '/signup', to: 'users#new'
  get '/logout', to: 'sessions#destroy'
  get '/signin', to: 'sessions#new'
  root 'events#index'
end
