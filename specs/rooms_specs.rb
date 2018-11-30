require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Pop", 5, [])
    @room2 = Room.new("Soul", 7, ["Jimmy", "Kim"])

    # @guest1 = "Jimmy"
    # @guest2 = "Kim"

  end

  def test_room_has_name
    assert_equal("Pop", @room1.name)
  end

  def test_room_has_capacity
    assert_equal(5, @room1.capacity)
  end

  def test_room_has_occupants__empty
    assert_equal([], @room1.occupants)
  end

  def test_room_has_occupants__occupied
    assert_equal(["Jimmy", "Kim"], @room2.occupants)
  end






end
