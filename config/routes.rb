Rails.application.routes.draw do
  root 'gossips#index'
  resources :users, only: [:new,:create]
  resources :sessions, only: [:new]
  get '/gossip/:id', to: 'gossips#show' , as: 'gossip'
  get '/new' , to: 'gossips#new'
  resources :gossips

  get '/team' , to: 'teams#index'

  get '/contact', to: 'contacts#index'


end
