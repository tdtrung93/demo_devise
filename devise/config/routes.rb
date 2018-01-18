Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions'}
  
  resources :products
  resources :carts

  get '/products/home', to: 'products#new'
  get '/', to: 'new#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
