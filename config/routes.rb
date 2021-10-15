Rails.application.routes.draw do
  get 'static_pages/home'
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/show', to: 'sessions#show'
  get '/index', to: 'sessions#index'
  resources :products
  resources :orders
  resources :users
end
