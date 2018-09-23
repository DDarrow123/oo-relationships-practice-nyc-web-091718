require 'pry'

class Guest

  attr_reader :name
  attr_accessor :listings

  @@all = []

  def initialize(name)
    @name = name
    #@listings = listings
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select do |trip|
      trip.guest == self
    end

  end

  def listings
    self.trips.map do |trip|
      trip.listing
    end
  end

  def trip_count
    self.trips.size

  end

#returns an array of all guests who have made over 1 trip
  def self.pro_traveller
    self.all.select do |guest|
      guest.trip_count > 1
      end

  end

#takes an argument of a name (as a string), returns the all guests with that name
  def self.find_all_by_name(name)
    self.all.select do |guest|
      guest.name == name
    end
  end



end
