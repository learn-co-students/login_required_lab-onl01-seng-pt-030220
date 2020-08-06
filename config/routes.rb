Rails.application.routes.draw do
  root 'application#hello'
  get 'sessions/login', to: "sessions#new"
  get 'sessions/welcome', to: "sessions#welcome"
  post 'sessions/login', to: "sessions#create"
  post 'sessions/logout', to: "sessions#destroy"

  get 'secrets/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
