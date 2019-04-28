require 'pry'


class Song

attr_accessor :name, :artist, :genre

@@count =0
@@artists =[]
@@genres =[]

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@artists << artist
  @@genres << genre
  @@count +=1
end

def self.count
  @@count
end

def self.artists
  # binding.pry
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  new_hash ={}
  @@genres.each do |element|
   if new_hash.include?(element)
    new_hash[element] +=1
  else
    new_hash[element] =1
  end
  end
  new_hash
end

def self.artist_count
  new_hash ={}
  @@artists.each do |element|
    if new_hash.include?(element)
      new_hash[element] +=1
    else
      new_hash[element] =1
    end
  end
  new_hash

end


end
