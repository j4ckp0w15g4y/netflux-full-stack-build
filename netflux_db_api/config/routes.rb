Rails.application.routes.draw do
  resources :users, only: [:index, :show]
  resources :movies, only: [:index, :show]
  resources :tiers, only: [:index, :show]

  # scope 

  get '/tiers/:tier_id/users', to: 'tiers#getUsers'
end
