class Trip

  #a listing has a city attribute which is a string of a city name, e.g. 'Seattle'

  attr_reader :listing, :guest

  @@all = []

  def initialize(listing, guest)
    @listing = listing
    @guest = guest

    @@all << self
  end

  def self.all
    @@all

  end



end
