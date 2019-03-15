require 'pry'
require_relative './artist.rb'
require_relative './genre.rb'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []


  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

  @@all << self

  end

  def self.all
    @@all
  end

end

jay_z = Artist.new("Jay-Z")
rap = Genre.new("rap")
# lucifer = Song.new("Lucifer", jay_z, 'rap')
jlo = Artist.new("jlo")
rock = Genre.new("rock")





# binding.pry

puts 'something'
