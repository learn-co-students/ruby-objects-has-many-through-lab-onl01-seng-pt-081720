class Song
    attr_reader :artist, :title, :genre

    @@all = []

    def initialize(title,artist,genre)
        @title = title
        @artist = artist
        @genre = genre
        @@all << self
        genre.add_song(self)
    end

    def self.all
        @@all
    end
end