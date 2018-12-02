class Guest

  attr_reader :name, :wallet, :fave_song

  def initialize(name, wallet, fave_song)
    @name = name
    @wallet = wallet
    @fave_song = fave_song
  end

  def my_jam(song)
    if @fave_song == song
      "#{@name}: OMG this is my jam!!!"
    else
      return false
    end
  end

end
