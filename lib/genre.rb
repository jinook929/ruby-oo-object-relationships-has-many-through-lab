class Genre
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name
    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        songs.each_with_object([]) {|song, arr| arr.push(song.artist)}.uniq
    end
end