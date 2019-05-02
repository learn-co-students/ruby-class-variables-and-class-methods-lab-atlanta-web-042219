require 'pry'
class Song
    attr_accessor :artist, :genre, :name
    
    @@artists = []
    @@count = 0
    @@genres = []


    def initialize(name, artist, genre)
        @artist = artist
        @genre = genre
        @name = name
        @@count +=1
        @@artists << artist
    end

    def name
        @name
    end
    
    def artist
        @artist
    end


end