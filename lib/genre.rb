class Genre
attr_accessor :name
@@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre==self
    end
  end

  def artists
    artists = []
    songs.each do |song|
      artists.push(song.artist)
    end
    return artists
  end
end
