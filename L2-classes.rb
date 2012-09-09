#creating a class

class Track
  attr_accessor :name, :artist

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def self.from_hash(hash)
    raise "Implement me!"
  end
  
  def to_s
    "please implement me"
  end
end

#Exercise implement to_s and from_hash


# Create a track from a hash
class Hash
  def to_track
    Track.from_hash(self)
  end
end

# Remember! With great power comes great responsiblity!

# So how do you know what methods are on hash?
h = {}
h.methods

#Where is to_track defined?
h.method(:to_track)

# But where exactly?
h.method(:to_track).source_location


# Exercise create Playlist class that contains a list of tracks.
# Implement play method that will loop through list of tracks printing track name


