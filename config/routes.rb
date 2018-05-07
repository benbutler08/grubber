Rails.application.routes.draw do
  resources :ratings
  resources :restaurants
  root 'home#feed'
  get 'home', to: 'home#users'
  get 'restaurants', to: 'home#restaurants'
  devise_for :users
end
