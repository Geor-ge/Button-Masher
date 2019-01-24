Rails.application.routes.draw do


  get '/home', to: 'pages#home'
  get '/tutorial', to: 'pages#tutorial'
  get '/lobby', to: 'pages#lobby'
  get '/arena', to: 'pages#arena'
  get '/welcome', to: 'players#index'
  get '/leaderboard', to: 'records#index'

  resources :players, except: [:index]

end
