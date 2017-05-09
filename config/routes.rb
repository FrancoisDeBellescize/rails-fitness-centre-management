Rails.application.routes.draw do

  root 'pages#show', :id => 1
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "admin" => "admin#show"

  resources :sessions, only: [:new, :create, :destroy]

  resources :pages
  resources :membership_options
  resources :bookings
  resources :messages
  resources :classes
  resources :images
end
