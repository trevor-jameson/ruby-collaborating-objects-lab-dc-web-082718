require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    @mp3_directory = Dir.glob(@path + '/*.mp3')
  end

  def files
    self.import.collect do |song_file|
      File.basename(song_file)
    end
  end
end
