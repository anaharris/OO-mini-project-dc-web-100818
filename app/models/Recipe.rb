require 'pry'

class Recipe
  @@all = []
  attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def users
    my_recipes = RecipeCard.all.select { |rc| rc.recipe == self }
    my_recipes.collect { |rc| rc.user }
  end

  def self.most_popular
    RecipeCard.all.max_by {|rc| rc.recipe.users.length}.recipe
  end

  def ingredients
    my_ingrs = RecipeIngredient.all.select {|rc| rc.recipe == self}
    my_ingrs.collect {|rc| rc.ingredient}
  end

  def allergens
      Allergen.all.select {|allergen| self.ingredients.include?(allergen.ingredient)}
  end

  def add_ingredients(ingrs)
    ingrs.each do |ingr|
      RecipeIngredient.new(self, ingr)
    end
  end
end
