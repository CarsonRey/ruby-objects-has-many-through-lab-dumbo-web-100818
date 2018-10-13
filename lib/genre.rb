require 'pry'
class Genre

  attr_reader :name

  @@all = []

    def initialize(name)
      @name = name
      @songs = []
      @@all << self
    end

    def self.all
      @@all
    end

    def songs
      Song.all.select do |song|
        song.genre == self
      end
    end

    def self.all
      @@all
    end

    def artists
      songs.collect do |song|
        song.artist
      end
    end




end
