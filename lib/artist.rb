class Artist
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name
    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        self.songs.each_with_object([]){|song, arr| arr.push(song.genre)}.uniq
    end
end