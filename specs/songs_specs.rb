require("minitest/autorun")
require('minitest/rg')

require_relative("../songs")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("The Winner Takes It All")
  end

  def test_song_has_name
    assert_equal("The Winner Takes It All", @song1.name)
  end

end
