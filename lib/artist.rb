class Artist
  attr_accessor :name, :genre, :song
  @@all = [] 
  def initialize(name)
    @genre = genre
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
    
  def genres 
    Song.all.map do |songs|
     songs.genre
   end 
 end 
end 
