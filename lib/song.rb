class Song
  attr_accessor :artist_name
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
  
  def name
    @name
  end
  
  def name=(input)
    input = @name
  end

  def save
    self.class.all << self
  end

end
