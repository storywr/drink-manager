Rails.application.routes.draw do
  resources :reviews
  root 'beers#index'
  resources :beers
  resources :styles
  resources :users
  get 'best', to: 'beers#best'
end
