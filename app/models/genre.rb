class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    # return the number of artists associated with the genre
  end

  def all_artist_names
    names_array = []
    self.artists.each do |artist|
      names_array << artist.name
    end
    names_array
    # return an array of strings containing every musician's name
  end
end
