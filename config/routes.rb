Rails.application.routes.draw do
  root 'pages#home'

  devise_for :players, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}

  get '/welcome', to: 'players#index'
  get 'players/:id', to: 'players#show'
  get '/lobby', to: 'pages#lobby'
  get '/arena', to: 'pages#arena'
  get '/rankings', to: 'records#index'
  get '/tutorial', to: 'pages#tutorial'


end
