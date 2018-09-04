require 'pry'

class Song

  attr_accessor :name, :artist # :artist is included because the Song is responsible for tracking its artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)
    self.new(file_name)
  end
end
