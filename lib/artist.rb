require 'pry'
class Artist
    attr_accessor :name


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

        Artist.all.find do |artist|
            if artist.name == name_find
                name_find
            else
                name_find = Artist.new(name_find)
            end
        end


    end

end