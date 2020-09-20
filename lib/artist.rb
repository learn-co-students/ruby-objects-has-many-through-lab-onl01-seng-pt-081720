class Artist 
  
  attr_accessor :name, :songs 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def songs
    Song.all.select { |song| song.artist == self }
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  #name, artist, genre
  
  def genres 
    songs.map { |artist| artist.genre }
  end 
  
  
  
  
  
end 