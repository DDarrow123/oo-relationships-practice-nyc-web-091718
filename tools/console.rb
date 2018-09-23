require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Guest.new("Sarah")
g2 = Guest.new("Alex")
g3 = Guest.new("Donna")

l1 = Listing.new("home", "Seattle")
l2 = Listing.new("apartment", "Seattle")
l3 = Listing.new("tent", "Kansas City")
l4 = Listing.new("apartment", "New York")
l5 = Listing.new("home", "New York")

t1 = Trip.new(l1, g1)
t2 = Trip.new(l2, g2)
t3 = Trip.new(l3, g3)
t4 = Trip.new(l3, g1)
t5 = Trip.new(l2, g1)
t6 = Trip.new(l5, g1)
t7 = Trip.new(l3, g2)

Guest.find_all_by_name("Sarah")


Pry.start
