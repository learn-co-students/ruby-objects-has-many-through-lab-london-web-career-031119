class Artist
  attr_reader :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(song, genre)
    Song.new(song,self,genre)
  end

  def songs #single source of truth
    Song.all.select {|x| x.artist == self}
  end
  #
  def genres #"second-level" info
    songs.map {|song| song.genre}
  end

  def self.all
    @@all
  end

end
