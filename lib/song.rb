#each song has name, an artist and a genre
#Song class must be able to keep track of the number of songs that it creates.

class Song
  attr_accessor :name, :artist, :genre

@@count = 0
@@artists = []
@@genres = []

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
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
  genre_hash = {}
  @@genres.each do |x|
    if genre_hash[x]
      genre_hash[x] += 1
    else genre_hash[x] = 1
    end
  end
  genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.each do |x|
    if artist_hash[x] #if the artists hash has the artist
      artist_hash[x] += 1 #add a number to that occurance
    else artist_hash[x] = 1 #otherwise, keep the number at 1
    end
  end
  artist_hash
end


end
