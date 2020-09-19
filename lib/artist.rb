require 'pry'
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

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Genre.all.select {|genres| genres.song == self}
  end

  def new_song(genre, name)
    Song.new(self, genre, name)
  end

end
