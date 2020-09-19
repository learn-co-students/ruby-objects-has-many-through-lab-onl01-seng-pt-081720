class Genre
   attr_accessor :name, :songs

   @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def songs
        @songs
     end

     def add_song(song)
        @songs << song
     end

     def artists
        songs.map do |song|
          song.artist
        end
      end

    def self.all
        @@all
    end

end