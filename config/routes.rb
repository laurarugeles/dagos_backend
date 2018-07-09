Rails.application.routes.draw do
  resources :product_types
  resources :attributes
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
