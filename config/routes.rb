Rails.application.routes.draw do

  root	'pages#index'
  get 	'pages/about_me'
  get 	'pages/services'
  get 	'/signup', to: 'users#new'
  post	'/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
end
