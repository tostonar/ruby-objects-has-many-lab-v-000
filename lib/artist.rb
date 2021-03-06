class Artist
  attr_accessor :name

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@song_count += 1
    song.artist = self
    #song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
  end

  def songs
    @songs
    #Song.all.select {|song| song.artist == self}
  end

  def self.song_count
    @@song_count
    #songs = Song.all.select {|song| song.artist == self}
    #songs.length
  end
end
