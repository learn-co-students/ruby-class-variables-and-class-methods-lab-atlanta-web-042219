class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << self.artist
    @@genres << self.genre
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
    @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end

  def self.artist_count
    @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1 }
  end

end
