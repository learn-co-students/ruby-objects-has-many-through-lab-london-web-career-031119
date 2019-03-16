class Artist

    attr_accessor :name

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

    def songs
        Song.all.select { |song| song.artist == self }
        #go through all the songs (SONGS.RB) in the world and SELECT the ones that match me (the current artist)
        
    end

    def genres
        # songs.each { |genre| songs == genre }
        
        songs.map { |song| song.genre}
    
    end
end