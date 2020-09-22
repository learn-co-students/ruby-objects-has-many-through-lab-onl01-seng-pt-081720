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

  def songs
    Song.all.select do |x|
      x.artist == self
    end
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.collect { |song| song.genre }
  end
end