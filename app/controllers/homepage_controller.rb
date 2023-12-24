class HomepageController < ApplicationController
  def index
    @recent_bookmarks = current_user.unique_bookmarks
    @recent_songs = Song.joins(:bookmarks).where(bookmarks: { id: @recent_bookmarks }).distinct.sort_by(&:created_at).reverse
    @recent_songs = Song.all
    @popular_songs = Song.all
    begin
      @popular_songs = Playlist.find(77).bookmarks
    rescue ActiveRecord::RecordNotFound
      @popular_songs = @recent_bookmarks
    end
    begin
      @easy_songs = Playlist.find(78).bookmarks
    rescue ActiveRecord::RecordNotFound
      @easy_songs = @recent_bookmarks
    end
  end
end
