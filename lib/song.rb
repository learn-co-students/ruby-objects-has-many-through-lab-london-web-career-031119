require 'pry'

class Song
  attr_reader :genre, :song
  attr_accessor :artist

  @@all = []

  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

end
