require "pry"
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
    Song.all.select do |the_songs| 
      the_songs.artist == self
      
    end
  end
  
  def new_song(name, genre) 
    
    Song.new(name, self, genre)
    
  end
  
  def genres 
    songs.map do |songss|
      songss.genre
      
    end 
  end
  
  
  
  
  
end 