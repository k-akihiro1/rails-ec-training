Rails.application.routes.draw do
  get 'static_pages/home'
  get '/show', to: 'sessions#show'
  get '/index', to: 'sessions#index'
    resources :orders
    resources :users
    get    '/login', to: 'sessions#new'
    post   '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    resources :products
  end
end
