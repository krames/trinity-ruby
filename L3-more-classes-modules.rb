# Requirements change! We want to our play list to include movies

class Media
  attr_accessor :name, :artist
  
  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def to_s
    name
  end
end

class Track < Media
  def to_s
    "[TRACK] #{super}"
  end
end

class Movie < Media
  def to_s
    "[MOVIE] #{super}"
  end
end

track = Track.new("Somebody", "Gotye")
puts track

movie = Movie.new("Officespace", "Mike Judge")
puts movie

# Mixins - Ruby's answer to multiple inheritance

module AudioPlayer
  def play
    puts "Now playing - #{name}"
  end
end

# Let's do it live!
class Track
  include AudioPlayer
end

track.play

# how do we protect against a missing name method?
module MoviePlayer
  def play
    if self.respond_to?(:name)
      puts "****** Now Playing #{name}"
    else
      puts "I don't know how to play that!"
    end
  end
end

class NotAMovie
  include MoviePlayer
end

obj = NotAMovie.new
obj.play


#What about a movie?
class Movie
  include MoviePlayer
end

movie.play

# Modules aren't just for mixins, you can use them for namespacing
module CheapTunes
  class Track
  end
end

CheapTunes::Track.new

