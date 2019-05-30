require "pry"

class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@all = []
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@all.collect {|songs| songs.genre}.uniq
  end

  def self.artists
    @@all.collect {|songs| songs.artist}.uniq
  end

  def self.genre_count
    counter = Hash.new(0)
      @@genres.map do |gen|
      counter[gen] += 1
    end
    counter
  end

  def self.artist_count
    counter = Hash.new(0)
      @@artists.map do |art|
      counter[art] += 1
    end
    counter
  end
end
