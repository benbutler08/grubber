Rails.application.routes.draw do
  resources :ratings
  resources :restaurants
  resources :relationships, only: [:create, :destroy]
  resources :messages
  root 'home#feed'
  get 'users_feed', to: 'home#users'
  get 'following', to: 'home#now_following'
  get 'restaurants_feed', to: 'home#restaurants'
  devise_for :users
  resources :users do
    member do
      get :followers, :following
    end
  end
  mount ActionCable.server, at: '/cable'
end
