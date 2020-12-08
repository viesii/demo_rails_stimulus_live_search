Rails.application.routes.draw do
  resources :players
  resources :player_search, only: [:index]

  root to: 'players#index'
end
