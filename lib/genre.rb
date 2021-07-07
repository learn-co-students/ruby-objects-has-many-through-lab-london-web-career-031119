require 'pry'

class Genre

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#   def artist
#     Song.all.select
#   end
# binding.pry
  def songs
    Song.all.select {|song| song.genre == self}
    #binding.pry
  end

  def artists
      songs.map {|song| song.artist}
      # binding.pry
  end
end
