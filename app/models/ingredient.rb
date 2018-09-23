require 'pry'

class Ingredient

  attr_reader :dessert, :name
  attr_accessor :calories

  @@all = []

  def initialize(dessert, name, calories)
    @dessert = dessert
    @name = name
    @calories = calories
    @@all << self
  end

  def self.all
    @@all
end


#should return the bakery object for the bakery that uses that ingredient
   def bakery
      self.dessert.bakery
  end

#should take a string argument that returns an array of all ingredients that include that string in their name
# .find_all_by_name('chocolate') might return ['chocolate sprinkles', 'chocolate mousse', 'chocolate']
# make sure you aren't just looking for exact matches (like 'chocolate' == 'chocolate')

  def self.find_all_by_name(ingredient)
    array = self.all.map do |ingredient_instance|
      if ingredient_instance.name.include?(ingredient)
        ingredient_instance.name
      end
    end
    array.compact
  end



  end
