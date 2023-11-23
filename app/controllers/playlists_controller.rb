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
      redirect_to user_playlists_path(current_user)
    else
      flash[:alert] = "Playlist creation failed."
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @playlist = Playlist.find(params[:id])
    # @playlists.user = current_user
  end

  def edit
    @playlist = Playlist.find(params[:id])
  end

  def update
    @playlist = Playlist.find(params[:id])

    if @playlist.update(playlist_params)
      flash[:notice] = "Playlist updated!"
      redirect_to user_playlists_path(current_user)
    else
      flash[:alert] = "Playlist update failed."
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @playlist = Playlist.find(params[:id])
    @playlist.destroy
    redirect_to playlist_path
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name, :photo)
  end
end
