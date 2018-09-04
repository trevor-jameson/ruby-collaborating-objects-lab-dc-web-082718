require 'pry'

class Artist

  @@all = []

  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(new_song)
    @songs << new_song
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(artist_name)
    self.all.each do |artist|
      if artist_name == artist.name
        return artist
      end
    end
    return Artist.new(artist_name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end
