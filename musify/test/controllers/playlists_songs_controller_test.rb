require 'test_helper'

class PlaylistsSongsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get playlists_songs_create_url
    assert_response :success
  end

end
