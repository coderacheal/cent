Rails.application.routes.draw do
  get 'expenses/index'
  get 'categories/index'
  get 'home/index'

  get '/home', to: 'home#index'
  
  
  resources :categories do
    resources :expenses
  end
  # resources :expenses
  devise_for :users
  

  root 'home#index'
end