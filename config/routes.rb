Playlist::Application.routes.draw do
  root to: 'entries#index'
  resources :entries

  get "index/download"


end
