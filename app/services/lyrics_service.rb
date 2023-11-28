require 'nokogiri'
require 'open-uri'
require 'action_view'

class LyricsService
  include ActionView::Helpers::SanitizeHelper
  attr_reader :artist, :track, :url

  def initialize(artist_name, track_name)
    @artist = artist_name
    @track = track_name
    @url = "https://genius.com/#{artist.split.join('-')}-#{track.split.join('-')}-lyrics"
  end

  def call
    puts "Scraping... #{url}"
    begin
      html = URI.open(url).read
      doc = Nokogiri::HTML.parse(html)
      return strip_tags(doc.search('div[data-lyrics-container="true"]').inner_html.gsub(/<br>/, "\n"))
    rescue OpenURI::HTTPError => ex
      return nil
    end
  end
end
