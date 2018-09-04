require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def import
    self.files.each do |file_name|
      song_name = file_name.split(" - ")[1]
      Song.new_by_filename(song_name)
    end
    # binding.pry
    puts "I'm a happy coder"
  end

  def files
    @mp3_directory = Dir.glob(@path + '/*.mp3')
    @mp3_directory.collect do |song_file|
      File.basename(song_file)
    end
  end
end
