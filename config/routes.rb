Rails.application.routes.draw do
  resources :orders
  resources :users
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :products
  get '/show', to: 'sessions#show'
  get '/index', to: 'sessions#index'
end
