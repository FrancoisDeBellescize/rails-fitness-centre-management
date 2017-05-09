Rails.application.routes.draw do
  resources :images
  resources :membership_options
  root 'pages#show', :id => 1
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "admin" => "admin#show"

  resources :sessions, only: [:new, :create, :destroy]

  resources :pages, only: [:show]
  resources :membership_options, only: [:show]
  resources :bookings, only: [:new, :create]
  resources :messages, only: [:new]
  
  scope '/admin' do
    resources :pages, except: [:show]
    resources :membership_options, except: [:show]
    resources :bookings, except: [:new, :create]
    resources :classes
    resources :messages, except: [:new]
  end

end
