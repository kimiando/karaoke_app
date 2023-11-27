class HomepageController < ApplicationController
    def index
      @playlists = Playlist.where(user: current_user)
    end
end
