Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root "application#"

  #resources :sessions do
   # resources :secrets
  #end
 # resources :secrets
 

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  
  get '/sessions/:session_id/secrets/:id' => 'secrets#show'
  post '/secrets' => 'secrets#create'
  post '/secrets' => 'secrets#destroy'

end
