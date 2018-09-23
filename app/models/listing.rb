require 'pry'
class Listing

#house or apartment
  attr_reader :listing_type, :city

  @@all = []

  def initialize(listing_type, city)

    @listing_type = listing_type
    @city = city
    @@all << self
  end

  def self.all
     @@all
  end

#returns an array of all guests who have stayed at a listing
  def guests
    self.trips.map do |trip|
      trip.guest
    end
  end

#returns an array of all trips at a listing
  def trips
    Trip.all.select do |trip|
      trip.listing == self
    end

  end

  #returns the number of trips that have been taken to that listing

  def trip_count
    self.trips.size
  end

#takes an argument of a city name (as a string) and returns all the listings for that city
  def self.find_all_by_city(city)
    self.all.select do |listing|
      listing.city == city
    end
  end

#finds the listing that has had the most trips
  def self.most_popular
    self.all.max_by do |listing|
      listing.trips.size
    end
  end


end
