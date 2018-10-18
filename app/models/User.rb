class User
@@all = []
attr_reader :name

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def recipes
    rc = RecipeCard.all.select {|rc| rc.user == self}
    rc.collect {|r| r.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new("#{ingredient.name} allergy", self, ingredient)
  end

  def allergens
    arr = Allergen.all.select {|al| al.user == self}
    arr.collect {|el| el.ingredient}
  end

  def top_three_recipes
    rc = RecipeCard.all.select {|rc| rc.user == self}
    rc.max_by(3) {|r| r.rating}
  end

  def most_recent_recipe
    self.recipes[-1]
  end

  def safe_recipes
    #Check all recipes to see if the recipe ingredients include the user's allergens
    #if not, select that recipe
    Recipe.all.select {|recipe| recipe.ingredients - self.allergens == recipe.ingredients}
  end

end
