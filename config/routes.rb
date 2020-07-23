Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root "application#"

  resources :sessions do
    resources :secrets
  end
  resources :secrets
  
end
