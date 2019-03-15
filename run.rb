require 'pry'
require_relative "./lib/song.rb"
require_relative "./lib/artist.rb"
require_relative "./lib/genre.rb"

a1 = Artist.new("Jay")
a2 = Artist.new("SHE")
a3 = Artist.new("Bob")

g1 = Genre.new("ballad")
g2 = Genre.new("rap")
g3 = Genre.new("rock")

s1 = Song.new("Tornado", a1, g1)
s2 = Song.new("love_bc", a2, g2)
s3 = Song.new("Sun", a3, g3)

binding.pry
puts "Mischief managed!"
