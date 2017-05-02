Rails.application.routes.draw do
  resources :classes
  resources :membership_options
  root 'pages#show', :id => 1
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "admin" => "admin#show"

  resources :sessions, only: [:new, :create, :destroy]

  scope '/admin' do
    resources :pages, except: [:show]
    resources :membership_options, except: [:show]
    resources :bookings, except: [:new]
  end

  resources :pages, only: [:show]
  resources :membership_options, only: [:show]
  resources :bookings, only: [:new]
end
