require 'pry'
class Genre
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
        song_arr = []
        Song.all.each do |x| 
            if x.genre == self 
                song_arr << x
            end
        end
        song_arr
    end

    def artists
        art_arr = []
        Song.all.each do |x| 
            if x.genre == self 
                art_arr << x.artist
            end
        end
        art_arr
    end

end