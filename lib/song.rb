require 'pry'
require_relative './genre.rb'
require_relative './artist.rb'

class Song

    attr_accessor :genre, :artist, :name

    @@all = []

    def initialize(name, aritst, genre)
        @name = name
        @aritst = aritst
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
        @aritst
    end

end



# track = Song.new("Good", "Jay_Z", "rap")
# track.all

# jay_z = Artist.new("Jay-Z") 
# kendrick = Artist.new("Kendrick Lamar")
# kendrick.new_song("Ninety Nine Problems", 'rap')
# jay_z.new_song("Niggaz in ", 'hip hop')
# kendrick.new_song("humble","rnb")
# jay_z.new_song('hotline','rap')

# binding.pry
# p "test"