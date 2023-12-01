class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    flash[:notice] = "'#{@bookmark.song.title}' added"
    redirect_to playlist_path(@bookmark.playlist)
  end

  def update
    @bookmark = Bookmark(params[:id])
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to playlist_path(@bookmark.playlist), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:playlist_id, :song_id)
  end
end
