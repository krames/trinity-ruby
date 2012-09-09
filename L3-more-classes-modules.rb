# Requirements change! We want to our play list to include movies

class Media
  attr_accessor :name, :artist
  
  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def to_s
    "[MEDIA] - #{super}"
  end
end
