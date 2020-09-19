class Artist 
   attr_accessor :name , :songs , :genre 
 
  @@all = []
 
  def initialize(name)
    @name = name
    @songs = [] 
    @@all << self
  end
  
def self.all 
  @@all 
end 

 def save   
   @@all << self 
 end 
 
  def songs 
   @songs 
  end

def add_song_by_name (song, genre) 
 singer = Song.new(song_name)
 add_song(singer)
end 
 
 end 