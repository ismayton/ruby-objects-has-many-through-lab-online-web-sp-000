class Song 
  
  attr_reader :name, :genre, :artist
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@all << self 
  end 
  
  
end 