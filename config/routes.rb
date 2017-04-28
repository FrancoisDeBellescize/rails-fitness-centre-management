Rails.application.routes.draw do
  get "sign_in" => "sessions#new"
  get "sign_out" => "sessions#destroy"
  get "admin" => "admin#show"

  resources :sessions, only: [:new, :create, :destroy]
  resources :pages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
