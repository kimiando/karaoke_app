class SongsController < ApplicationController
  def index
    # Just randomly grabbing the last 10 songs to show something before searching
    @songs = current_user.songs.last(10)
    if params[:query].present?
      begin
        RSpotify::authenticate(ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'])
        # Asking the API for results based on the search
        api_results = RSpotify::Track.search(params[:query])
        # We want to turn those results into instances of songs
        @songs = BuildSongsService.new(api_results).call
      rescue RestClient::ExceptionWithResponse, RestClient::TooManyRequests, Exception => e
        @songs = current_user.songs.last(10)
      end
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
    if @song.lyrics.nil?
      @song.lyrics = LyricsService.new(@song.artist.name, @song.title).call
      @song.save
    end
    @bookmark = Bookmark.new
  end

  def destroy
    @song = Booking.find(params[:id])
    @song.destroy
    redirect_to song_path(@song), notice: 'Bookmark was successfully deleted.'
  end

  def random
    # @song = Song.all.sample
    session[:song_ids] = Song.favorites.map(&:id) if session[:song_ids].nil? || session[:song_ids].empty?
    puts
    p session[:song_ids]
    puts
    @song = Song.find_by(id: session[:song_ids].shift) || Song.all.samples
    @bookmark = Bookmark.new
    # raise
  end
end
