class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)
    @playlist.user = current_user

    if @playlist.save
      flash[:notice] = "Playlist created!"
      redirect_to playlist_path(@playlist)
    else
      flash[:alert] = "Playlist creation failed."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :photo)
  end
end
