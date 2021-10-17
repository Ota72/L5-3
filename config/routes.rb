Rails.application.routes.draw do
  resources :users
  root 'top#main'

  get '/tweets/new_tweet'  
  post '/tweets/new_tweet', to: 'tweets#create'
  resources :tweets


  post '/top/login'
  get '/top/logout'
  
  resources :likes
end
