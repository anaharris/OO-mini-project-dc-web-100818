class Allergen
attr_reader :name, :user, :ingredient
@@all = []

  def self.all
    @@all
  end
  
  def initialize(name, user, ingredient)
    @name = name
    @user = user
    @ingredient = ingredient
    self.class.all << self
  end
end
