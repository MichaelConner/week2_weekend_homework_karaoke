class Room

  attr_reader :name, :capacity, :occupants, :playlist

  def initialize(name, capacity, occupants, playlist)
    @name = name
    @capacity = capacity
    @occupants = occupants
    @playlist = playlist
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

end
