Rails.application.routes.draw do
  
  get 'users/new'
  get 'users/create'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  root to: 'tasks#index'
  get 'signup', to: 'users#new'
  resources :tasks
  resources :users, only: [:index, :new, :create]
end