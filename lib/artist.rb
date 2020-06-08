class Artist
  @@all=[]
  attr_accessor :name
  
  def initialize(name)
    @name=name
    @@all<<self
  end
  
  def add_song(song)
    song.name= self
  end
  
  def songs 
    Song.all.select do {|s| s.artist==self}
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
    if self.all.
    