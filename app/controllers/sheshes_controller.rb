class SheshesController < ApplicationController
  def create
    @sesh = Sesh.find(params[:id])
    @bookmark = Bookmark.new(booking_params)

    @sesh.save
    # redirect_to playlist_path(@sesh.playlist)
  end

  private

  def seshes_params
    params.require(:seshes).permit(:difficulty, :key, :hype_number)
  end
end
