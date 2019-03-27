class PlaylistsSongsController < ApplicationController
  def create
    @playlist_song = PlaylistSong.new(playlist_song_params)
    @playlist.user = current_user
    respond_to do |format|
      if @playlist.save
        format.html { redirect_to @playlist, notice: 'Playlist was successfully created.' }
        format.json { render :show, status: :created, location: @playlist }
      else
        format.html { render :new }
        format.json { render json: @playlist.errors, status: :unprocessable_entity }
      end
    end
  end
end
