Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  get 'products/show'
  get 'products/index'
end
