require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    song_name = filename.split(" - ")[1]
    new_song = self.new(song_name)

    new_song.artist_name = filename.split(" - ")[0]
    new_song
  end
end
