class Playlist < ApplicationRecord
  belongs_to :user

  #Sin modelo intermedio
  #has_and_belongs_to_many :songs

  #Con modelo intermedio
  has_many :playlists_songs
  has_many :songs, through: :playlists_songs
end
