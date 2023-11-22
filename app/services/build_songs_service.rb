class BuildSongsService
  attr_reader :api_results

  def initialize(api_results)
    @api_results = api_results
  end

  # run the code
  def call
    api_results.map do |song|
      artist = Artist.new(name: song.album.artists.first.name)
      Song.new(artist: artist, title: song.name, audio_url: song.preview_url, photo_url: song.album.images.first['url'])
    end
  end
end
