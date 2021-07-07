require 'pry'

class Artist

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  # binding.pry

  def songs
    #returns an array of all songs of an artist.
    #This is because it goes to Song class and brings back the whole object
    Song.all.select {|song| song.artist == self}
  end

  def genres
    songs.map { |song| song.genre }
    # binding.pry
  end
end
