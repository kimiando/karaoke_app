class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to playlist_path(@bookmark.playlist)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:playlist_id, :song_id)
  end
end
