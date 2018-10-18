class Ingredient
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
    alr = Allergen.all.select {|al| al.ingredient == self}
    alr.collect {|a| a.user}
  end

  def self.most_common_allergen
    Allergen.all.max_by {|al| al.ingredient.users.length}.ingredient
  end

end
