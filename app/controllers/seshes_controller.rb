class SeshesController < ApplicationController
  def create
    @bookmark = Bookmark.find(params[:bookmark_id])
    @sesh = Sesh.new(seshes_params)
    @sesh.bookmark = @bookmark

    @sesh.save

    redirect_to playlist_path(@sesh.bookmark.playlist)
  end

  private

  def seshes_params
    params.require(:sesh).permit(:difficulty, :key, :hype_number)
  end
end
