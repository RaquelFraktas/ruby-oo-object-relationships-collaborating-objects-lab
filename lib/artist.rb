require 'pry'
class Artist
    attr_accessor :name, :songs
    @@all= []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all 
    end

    def songs
       Song.all.find_all do |song|
        song.artist == self
       end
    end

    def add_song(song)
       song.artist = self
        
    end

    def self.find_or_create_by_name(name_find)
            self.find(name_find) ? self.find(name_find) : Artist.new(name_find)
    end

    def self.find(artist_name) 
        Artist.all.find do |artist|
            artist.name == artist_name
        end
    end

    def print_songs
        self.songs.each do |songs|
          puts songs.name
        end
    end


end