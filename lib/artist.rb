require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    exist = @@all.find {|artist| artist.name == name}
    if exist
      return exist
    else
      Artist.new(name)
    end
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs
  end

end
