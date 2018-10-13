require 'pry'
class Artist

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    name = Song.new(name, self, genre)
  end

  def songs # has many relationship with Song class: Song has to have a reader for the artist, so that the artist can iterate through
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres # Artist has many Genres through Songs: this method relies on the Artist's class relationship to the Song class to get to genres, allowing us to reuse our song instance method.
    songs.collect do |song|
      song.genre
    end
  end

end
