class SongsController < ApplicationController
  def index
    # Just randomly grabbing the last 10 songs to show something before searching
    @songs = Song.last(10)
    if params[:query].present?
      RSpotify::authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'])
      # Asking the API for results based on the search
      api_results = RSpotify::Track.search(params[:query])
      # We want to turn those results into instances of songs
      @songs = BuildSongsService.new(api_results).call
    end

    # by default, it's just responding to HTML. but we want HTML AND text
    respond_to do |format|
      # Normal request in the browser
      format.html
      # Our Stimulus request asking for a string
      format.text { render partial: "songs/list", locals: { songs: @songs }, formats: [:html] }
    end
  end

  def show
    @song = Song.find(params[:id])
    @bookmark = Bookmark.new
  end
end
  # def destroy
  #   @song = Booking.find(params[:id])
  #   @song.destroy
  #   redirect_to song_path(@song), notice: 'Bookmark was successfully deleted.'
  # end
