class BuildSongsService
  attr_reader :api_results

  def initialize(api_results)
    @api_results = api_results
  end

  # run the code
  def call
    api_results.first(10).map do |song|
      artist = Artist.find_or_create_by(name: song.album.artists.first.name, api_id: song.artists.first.id)
      Song.find_or_create_by(artist: artist, title: song.name, audio_url: song.preview_url, photo_url: song.album.images.first['url'], api_id: song.id)
    end
  end
end
