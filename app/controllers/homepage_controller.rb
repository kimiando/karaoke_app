class HomepageController < ApplicationController
    def index
      @recent_bookmarks = current_user.bookmarks.sort_by(&:created_at).first(10)
      @bookmarks = Bookmark.all.sort_by(&:created_at)
    end
end
