Rails.application.routes.draw do
  resources :reviews
  root 'users#homepage'
  resources :beers
  resources :styles
  resources :users
  resources :sessions
  get 'best', to: 'beers#best'
  get 'homepage', to: 'users#homepage'
  get '/auth/github/callback' => 'sessions#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
end
