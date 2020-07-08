Rails.application.routes.draw do
  get 'topics/new'
  get 'sessions/new'
  get 'users/new'
  root 'pages#index'
  get 'pages/help'
  
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destory'
  
  resources :users
  resources :topics
  resources :searches,only:[:index]
  
  get 'favorites/index'
  post '/favorites',  to:'favorites#create'
  delete '/favorites', to: 'favorites#destroy'
end
