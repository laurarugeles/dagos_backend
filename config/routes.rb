Rails.application.routes.draw do
  devise_for :admins
  resources :product_types
  resources :attributes
  resources :products

  root to: "homes#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
