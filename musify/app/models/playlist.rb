class Playlist < ApplicationRecord
  belongs_to :user

  #Sin modelo intermedio
  #has_and_belongs_to_many :songs

  #Con modelo intermedio
  has_many :playlist_songs
  has_many :songs, throught: :playlist_songs
end
