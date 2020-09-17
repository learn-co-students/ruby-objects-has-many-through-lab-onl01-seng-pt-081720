class Artist
    attr_accessor :name, :song
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        song_arr = []
        Song.all.each do |x| 
            if x.artist == self 
                song_arr << x
            end
        end
        song_arr
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        gen_arr = []
        Song.all.each do |x| 
            if x.artist == self 
                gen_arr << x.genre
            end
        end
        gen_arr
    end

    

end