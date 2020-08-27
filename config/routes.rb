Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'
  patch '/cart/:song_id', to: 'cart#update'
  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'
  get '/artists/:id', to: 'artists#show'
  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'
  post '/artists', to: 'artists#create'
end
