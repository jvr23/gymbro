Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users
  resources :visits, only: [:index, :new, :create]
  resources :reviews
  resources :gyms
  resources :accounts
  resources :users, only: :show
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  mount ActionCable.server => '/cable'
#errors
match "/404", to: "errors#not_found", via: :all
match "/500", to: "errors#internal_server_error", via: :all
end
