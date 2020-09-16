class Genre
  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all  << self
  end

  def songs
    Song.all.find_all{|x| x.genre == self}
  end

  def artists
    songs.map{|x| x.artist}
  end

  def self.all
    @@all
  end
end
