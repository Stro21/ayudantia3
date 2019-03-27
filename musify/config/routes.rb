Rails.application.routes.draw do
  get 'playlists_songs/create'
  resources :playlists do 
    resources :playlists_songs
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
