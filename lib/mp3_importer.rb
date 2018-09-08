require 'pry'
require_relative "song.rb"
require_relative "artist.rb"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    @mp3_directory = Dir.glob(@path + '/*.mp3')
    @mp3_directory.collect do |song_file|
      File.basename(song_file)
    end
  end

  def import
    Song.new_by_filename.each do |file|

    end
  end
end
