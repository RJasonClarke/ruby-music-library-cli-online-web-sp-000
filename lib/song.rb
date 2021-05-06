class Song

  attr_accessor :name, :song

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(song)
    song = self.new(song)
    song.save
    song
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
  end

  def song_with_artist

  end
end
