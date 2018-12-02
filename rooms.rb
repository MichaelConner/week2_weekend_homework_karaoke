class Room

  attr_reader :name, :capacity, :occupants, :playlist

  def initialize(name, capacity, occupants, playlist)
    @name = name
    @capacity = capacity
    @occupants = occupants
    @playlist = playlist
  end


  def guest_count
    @occupants.length
  end

  def add_guest_to_room(guest)
    if @occupants.length == (@capacity)
      "Sorry this room is already full!"
    else
       @occupants << guest
    end
  end

  def remove_guest_from_room(guest)
    if @occupants.include?(guest)
       @occupants.delete(guest)
    else
       "Sorry this guest is not in the room!"
    end
  end

  def empty_room
    @occupants.clear()
  end

  def play_song
    #Once song is complete
    @playlist.shift
  end

  def show_now_playing
    if @playlist.length == 0
      "Playlist is empty - please select a song!"
    else
      @playlist.at(0)
    end
  end

  def add_to_playlist(song)
    @playlist << song
  end

  def remove_from_playlist(song)
    if @playlist.length != 0
       @playlist.delete(song)
    else
      "Playlist is already empty - please select a song!"
    end
  end

  def show_up_next
    if @playlist.length <= 1
      "There is nothing next in the queue - please select a song!"
    else
      @playlist.at(1)
    end
  end

  #  def is_my_jam_playing
  # #   @occupants.any? {|guest| guest[:fave_song] == "The Winner Takes It All"}
  #  end

end
