class HomepageController < ApplicationController
  def index
    @recent_bookmarks = current_user.unique_bookmarks
    @recent_songs = Song.joins(:bookmarks).where(bookmarks: { id: @recent_bookmarks }).distinct.sort_by(&:created_at).reverse
    begin
      @popular_songs = Playlist.find(77).songs
    rescue ActiveRecord::RecordNotFound
      @popular_songs = @recent_bookmarks
    end
    begin
      @easy_songs = Playlist.find(78).songs
    rescue ActiveRecord::RecordNotFound
      @easy_songs = @recent_bookmarks
    end
  end
end
