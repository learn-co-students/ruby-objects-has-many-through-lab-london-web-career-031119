require 'pry'
require_relative './genre.rb'
require_relative './artist.rb'

class Song

    attr_accessor :genre, :artist
    attr_reader :name

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

    def genre
        @genre
    end
    def artist
        @artist
    end

end

