class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
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
        @@genres.each do |elem|
            if !genre_count[elem]
                genre_count[elem] =  1
            else
                genre_count[elem] += 1
            end
        end
       genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each do |elem|
            if !artist_count[elem]
                artist_count[elem] = 1
            else 
                artist_count[elem] += 1
            end
        end
        artist_count
    end
end

chun_li = Song.new("Chun-Li", "Nicki Minaj", "Rap")
super_bass = Song.new("Super Bass", "Nicki Minaj", "Pop")
toosie_slide = Song.new("Toosie Slide", "Drake", "Rap")
tyn = Song.new("Thank You, Next", "Ariana Grande", "Pop")

p Song.artist_count

# {:genre => num_songs}