require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name=(name)
       @artist = Artist.find_or_create_by_name(name)
    end

    def self.new_by_filename(filename)
        song_name = filename.split(/ - |.mp3/)[1]
        artist= filename.split(/ - |.mp3/)[0]


        song = Song.new(song_name)
        song.artist_name= artist
        song
   
    end

end