class HomepageController < ApplicationController
    def index
      @recent_bookmarks = current_user.bookmarks.order(created_at: :desc).limit(20)
      @recent_songs = Song.joins(:bookmarks).where(bookmarks: { id: @recent_bookmarks }).distinct.sort_by(&:created_at).reverse
    end
end
