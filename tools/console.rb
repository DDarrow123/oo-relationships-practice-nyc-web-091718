require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

## Airbnb Test Data ##
# g1 = Guest.new("Sarah")
# g2 = Guest.new("Alex")
# g3 = Guest.new("Donna")
#
# l1 = Listing.new("home", "Seattle")
# l2 = Listing.new("apartment", "Seattle")
# l3 = Listing.new("tent", "Kansas City")
# l4 = Listing.new("apartment", "New York")
# l5 = Listing.new("home", "New York")
#
# t1 = Trip.new(l1, g1)
# t2 = Trip.new(l2, g2)
# t3 = Trip.new(l3, g3)
# t4 = Trip.new(l3, g1)
# t5 = Trip.new(l2, g1)
# t6 = Trip.new(l5, g1)
# t7 = Trip.new(l3, g2)
#
# Guest.find_all_by_name("Sarah")

## bakery test data ##

# d2 = Dessert.new("cake", b1)
# d3 = Dessert.new("tiramisu", b1)

b1 = Bakery.new("Sweet Buttons Bakery")
b2 = Bakery.new("Spinelli Bakery")


d1 = Dessert.new("flan", b1)

d2 = Dessert.new("tiramisu", b1)

d3 = Dessert.new("apple pie", b1)

d4 = Dessert.new("apple pie", b2)

d5 = Dessert.new("tiramisu", b2)


in1 = Ingredient.new(d1, "flour", 300)
in2 = Ingredient.new(d2, "baked soda", 600)
in3 = Ingredient.new(d1, "sugar", 800)
in4 = Ingredient.new(d2, "cinammon", 100)
in5 = Ingredient.new(d3, "baked apples", 50)

d1.calories

in1.bakery

Ingredient.find_all_by_name("baked soda")
# b2 = Bakery.new("Magnolia Bakery")
# b3 = Bakery.new("Cup Cakery Bakery")
# b4 = Bakery.new("Spinelli Bakery")
#
# in1 = Ingredient.new(10, "flour")
# in2 = Ingredient.new(20, "sugar")
# in3 = Ingredient.new(5, "baking soda")

# in1.bakery

Pry.start
