require 'pry'

class Song

  attr_accessor :name, :artist # :artist is included because the Song is responsible for tracking its artist

  def initialize(name)
    @name = name
  end

  def new_by_file_name(file_name)
    self.new(file_name)
  end
end
