Rails.application.routes.draw do
  root 'home#feed'
  get 'home', to: 'home#users'
  get 'restaurants', to: 'home#restaurants'
  devise_for :users
end
