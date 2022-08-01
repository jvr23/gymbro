Rails.application.routes.draw do
  devise_for :users
  resources :visits
  resources :reviews
  resources :gyms
  resources :accounts
  resources :users, only: :show 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
