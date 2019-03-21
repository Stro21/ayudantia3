class Song < ApplicationRecord
  #Sin modelo intermedio
  #has_and_belongs_to_many :playlists

  #Con modelo intermedio
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs
end
