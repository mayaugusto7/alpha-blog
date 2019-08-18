Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'users/signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'pages/about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources 'users', except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
end
