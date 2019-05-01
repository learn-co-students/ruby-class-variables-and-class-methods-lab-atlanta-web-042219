require 'pry'

class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.inject(Hash.new(0)) do |hash, genre|
            hash[genre] += 1; hash
        end
    end

    def self.artist_count
        @@artists.inject(Hash.new(0)) do |hash, artist|
            hash[artist] += 1; hash
        end
    end
end