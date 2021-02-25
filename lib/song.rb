require 'pry'

class Song
    @@all = []
    
    @@count = 0

    @@artists = []

    @@genres = []

    
    
    attr_accessor :name

    attr_accessor :artist

    attr_accessor :genre

    def initialize(name,artist,genre)
        @name = name
        @artist=artist
        @genre=genre
        @@all << self
        @@count += 1
        @@artists << artist
        @@genres << genre
        
    end

    def self.all
        @@all
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
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.artist_count
        song_count ={}
        @@artists.each do |artist|
            if song_count[artist]
                song_count[artist] += 1
            else
                song_count[artist] = 1
            end
        end
        song_count
    end
  

end

