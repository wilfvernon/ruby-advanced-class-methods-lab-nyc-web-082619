class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new
    self.all.push(song)
    song
  end
  
  def self.new_by_name(title)
    song = self.new
    song.name = title
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
