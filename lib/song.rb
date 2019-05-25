require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
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

    def self.genres
        @@genres.uniq
    end 

    def self.artists
        @@artists.uniq
    end 

    def self.genre_count
        genre_count = {}
        @@genres.each do  |genre|
            if genre_count[genre] 
                genre_count[genre] += 1
            else 
                genre_count[genre] = 1
            end 
        end 
        genre_count
    end 

    def self.artist_count
       artist_count = {}
       @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else 
                artist_count[artist] = 1
            end 
        end 
        artist_count
    
    end 


end 




##class tracks # of songs created
## ex. Song.count => 30
#Song class SHOW all artist of exsisting songs
## ex.Song.artists
  # => ["Jay-Z", "Drake", "Beyonce"]
#`Song` class SHOW all the genres of existing songs:
## ex. Song.genres
  # => ["Rap", "Pop"]
# Song` class  track of the number of songs of each genre it creates.

# Should return something like this;

# ```rubySong.genre_count
# {"rap" => 5, "rock" => 1, "country" => 3}
# ```

# Lastly, we want our `Song` class to reveal to us the number of songs each artist is responsible for.

# ```ruby
# Song.artist_count
#   # => {"Beyonce" => 17, "Jay-Z" => 40}
