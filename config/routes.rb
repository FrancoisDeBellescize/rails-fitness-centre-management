Rails.application.routes.draw do
  root 'pages#show', :id => 1
  get "login" => "sessions#new"
  get "logout" => "sessions#destroy"
  get "admin" => "admin#show"

  resources :sessions, only: [:new, :create, :destroy]

  scope '/admin' do
    resources :pages, except: [:show]
  end

  resources :pages, only: [:show]
end
