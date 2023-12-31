Rails.application.routes.draw do
  devise_for :users
  devise_for :rsellers
  # Index page routes
  # get '/customers', to: 'customers#index'
  # # show page routes
  # get "/customers/:id", to: "customers#show", as: 'customer'
  # #new and create page routes
  # get '/customers/new', to: 'customers#new', as: 'new_customer'
  # post '/customers', to: 'customers#create', as: 'create_customer'
  root to: "sellers#home"
  
  
  resources :customers

  resources :sellers

  get '/home', to: 'sellers#home'

  resources :sellers do
    resources :products
  end
end
