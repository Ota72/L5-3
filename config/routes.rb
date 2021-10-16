Rails.application.routes.draw do
  resources :users
  root 'users#index'

  get '/tweets/new_tweet'  
  post '/tweets/new_tweet', to: 'tweets#create'

end
