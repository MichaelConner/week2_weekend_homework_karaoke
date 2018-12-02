require("minitest/autorun")
require('minitest/rg')

require_relative("../guests")
require_relative("../songs")

class GuestTest < MiniTest::Test

  def setup
     @song1 = Song.new("SOS")
     @song2 = Song.new("Fernando")

     @guest1 = Guest.new("Jimmy", 100.00, @song1)
  end

  def test_guest_has_name
    assert_equal("Jimmy", @guest1.name)
  end

  def test_guest_has_wallet
    assert_equal(100.00, @guest1.wallet)
  end

  def test_room_has_fave_song
    assert_equal(@song1, @guest1.fave_song)
  end

  def test_my_jam__is_not_my_jam
    assert_equal(false, @guest1.my_jam(@song2))
  end

  def test_my_jam__is_my_jam
    assert_equal("Jimmy: OMG this is my jam!!!", @guest1.my_jam(@song1))
  end

end
