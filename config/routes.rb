Rails.application.routes.draw do
  root 'beers#index'
  resources :beers
  resources :styles
  resources :users
end
