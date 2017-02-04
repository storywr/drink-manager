Rails.application.routes.draw do
  resources :reviews
  root 'users#homepage'
  resources :beers
  resources :styles
  resources :users
  get 'best', to: 'beers#best'
  get 'homepage', to: 'users#homepage'
end
