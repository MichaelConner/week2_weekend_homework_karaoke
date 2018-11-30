require("minitest/autorun")
require('minitest/rg')

require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("The Winner Takes It All")
    @song2 = Song.new("Black Flanders")
    @song3 = Song.new("Hallelujah")
    @playlist1 = [@song1, @song2]

    @guest1 = Guest.new("Jimmy", 100.00, @song1)
    @guest2 = Guest.new("Kim", 500.00, @song2)
    @guestlist1 = [@guest1, @guest2]

    @room1 = Room.new("Red", 5, [], [])
    @room2 = Room.new("Pink", 7, [@guest1, @guest2], [@song1,@song2])

  end

  def test_room_has_name
    assert_equal("Red", @room1.name)
  end

  def test_room_has_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_room_has_occupants__empty
    assert_equal([], @room1.occupants)
  end

  def test_room_has_occupants__occupied
    assert_equal([@guest1, @guest2], @room2.occupants)
  end

  def test_room_has_playlist__empty
    assert_equal([], @room1.playlist)
  end

  def test_room_has_playlist__with_songs
    assert_equal([@song1,@song2], @room2.playlist)
  end

  def test_play_song
    assert_equal(@song1, @room2.play_song)
  end

  def test_show_now_playing__empty_playlist
    assert_equal("Playlist is empty - please select a song!", @room1.show_now_playing)
  end

  def test_show_now_playing__with_songs
    assert_equal(@song1, @room2.show_now_playing)
  end

  def test_add_to_playlist
    assert_equal(3, @room2.add_to_playlist(@song3).length)
  end

  def test_remove_from_playlist__empty_playlist
    assert_equal("Playlist is already empty - please select a song!", @room1.remove_from_playlist(@song1))
  end

  def test_remove_from_playlist_with_song
    @room2.remove_from_playlist(@song2)
    assert_equal(1, @room2.playlist.length)
  end

  def test_show_up_next__empty_playlist
    assert_equal("There is nothing next in the queue - please select a song!", @room1.show_up_next)
  end

  def test_show_up_next__with_songs
    assert_equal(@song2, @room2.show_up_next)
  end

end
