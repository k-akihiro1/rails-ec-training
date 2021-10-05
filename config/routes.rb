Rails.application.routes.draw do
  get    '/login',   to: 'sessions#new'
  get 'products/show'
end
