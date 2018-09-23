require 'pry'
class Bakery

  attr_reader :name
  #  :dessert


  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    Ingredient.all.select do |ingredient|
      ingredient.dessert.bakery == self
    end
  end

  def desserts
    Dessert.all.select do |dessert|
      dessert.bakery == self
    end
  end

    #should return a number totaling the average number of calories for the desserts sold at this bakery

    def average_calories
      total_calories = 0.0
      self.ingredients.each do |ingredient|
        total_calories += ingredient.calories.to_f
      end
      total_calories / self.desserts.size.to_f
    end

    #should return a string of names for ingredients for the bakery

    def shopping_list
      self.ingredients.map do |ingredient|
        ingredient.name
      end
    end


end
