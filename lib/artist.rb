require 'pry'
require_relative './genre.rb'
require_relative './song.rb'

class Artist

    attr_accessor :name, :songs, :genres

    @@all = []
    
    def initialize (name)
        @name = name
        @@all << self
    end

    def new_song (name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.map {|song| song.genre}
    end

    def self.all
        @@all
    end

end

# jay_z = Artist.new("Jay-Z")
# rap = Genre.new("rap")
# ninety_nine_problems = Song.new("99 Problems", jay_z, rap)




# binding.pry
#  puts "test"