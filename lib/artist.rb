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
  
  
    