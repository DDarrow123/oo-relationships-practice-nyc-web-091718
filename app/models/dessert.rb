require 'pry'

class Dessert

  attr_reader :name
  attr_accessor :bakery

  @@all = []

  def initialize(name, bakery)
    @bakery = bakery
    @name = name
    @@all << self
  end

  def self.all
    @@all

  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert == self
    end
  end

# should return a number totaling all the calories for all the ingredients included in that dessert
  def calories
    total_calories = 0.0
    self.ingredients.each do |ingredient|
      total_calories += ingredient.calories.to_f
    end
    total_calories
  end



end
