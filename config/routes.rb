Rails.application.routes.draw do
  resources :ratings
  resources :restaurants
  root 'home#feed'
  get 'users_feed', to: 'home#users'
  get 'following', to: 'home#now_following'
  get 'restaurants_feed', to: 'home#restaurants'
  devise_for :users
end
