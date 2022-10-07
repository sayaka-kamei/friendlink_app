Rails.application.routes.draw do
  get '/pictures', to: 'pictures#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :pictures
end
