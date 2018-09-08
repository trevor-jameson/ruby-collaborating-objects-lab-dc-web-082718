class Song

  attr_accessor :name, :artist

  def initialize(name, artist=nil)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    song_atr = filename.split(".mp3")[0].split(" - ")
    new_song = Song.new(song_atr[1])
    new_song.artist = Artist.find_or_create_by_name(song_atr[0])
    binding.pry
    new_song
  end

end
