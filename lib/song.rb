require "pry"

class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@artists = []
	@@genres = []
	@@artist_count = {}
	@@genre_count = {}

	def initialize(obj_name, obj_artist, obj_genre)
		@name = obj_name
		@artist = obj_artist
		@genre = obj_genre

		Song.count += 1
		Song.class_variable_get(:@@artists) << obj_artist
		Song.class_variable_get(:@@genres) << obj_genre

		Song.artist_count[obj_artist] ||= 0
		Song.artist_count[obj_artist]  += 1

		Song.genre_count[obj_genre] ||= 0
		Song.genre_count[obj_genre]  += 1
	end

#--------------------------------------------------
	def self.count
		@@count
	end
	def self.count=(num)
		@@count = num
	end
#--------------------------------------------------

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.artist_count
		@@artist_count
	end

	def self.genre_count
		@@genre_count
	end
end

# asdf = Song.new("title", "artist", "genre")
# asdf = Song.new("title", "asdf", "genre")
# asdf = Song.new("title", "artist", "genre")

# puts Song.artists
