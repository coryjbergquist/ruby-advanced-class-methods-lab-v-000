require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
  song = self.new
  @@all << song

      song
  end

  def self.new_by_name(name)
    song = self.new
   song.name = name
   song
   end

   def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    song
   end

   def self.find_by_name(name)
    @@all.detect do |x|
         x.name == name
                end
end

def self.find_or_create_by_name(name)
  self.find_by_name(name) if self.name == name
    self.create_by_name(name) if self.name != name
end
end


end
