Rails.application.routes.draw do
  get 'orders/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors do
    resources :books
    end
    resources :orders
    resources :books, only: [:new]

  root to: "authors#index"
end
