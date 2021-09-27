Rails.application.routes.draw do
  get 'products/:id', to: 'products#products_show'
  get 'products/', to: 'products#products_show_not_found'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
