class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new
    song.save
    song
  end
  
  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end
  
  def create_by_name
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
