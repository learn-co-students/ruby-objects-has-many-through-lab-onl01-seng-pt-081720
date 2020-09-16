class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    Song.new(name,self,genre)
  end

  def songs
    Song.all.find_all{|x| x.artist == self}
  end

  def genres
    Song.all.map{|x| x.genre}
  end

  def self.all
    @@all
  end
end
