Rails.application.routes.draw do
  root  'static_pages#home'
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :products
  resources :orders

  post '/guest_login', to: 'static_pages#guest_login'

end
