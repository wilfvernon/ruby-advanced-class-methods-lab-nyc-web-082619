class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(title)
    song = self.create
    song.name = title
  end
  
  def self.all
    @@all
  end
  
  def initialize
    @name = self.name
  end

  def save
    self.class.all << self
  end

end
