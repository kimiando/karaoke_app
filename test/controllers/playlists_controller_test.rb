require "test_helper"

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  test "should get reference:" do
    get playlists_reference:_url
    assert_response :success
  end
end
