Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  get '/player-vs-player', to: 'pages#versus'
  get '/favorite', to: 'pages#favorite'
  resources :teams, only: %i[index show]
  resources :games, only: %i[index show]
  resources :players, only: %i[index show]
end
