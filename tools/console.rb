require_relative '../config/environment.rb'

#Users
ana = User.new("Ana")
jenny = User.new("Jenny")
anna = User.new("Anna")
joe = User.new("Joe")
mike = User.new("Mike")

#Recipes
apple_pie = Recipe.new("apple pie")
pumpkin_pie = Recipe.new("pumpkin pie")
mashed_potatoes = Recipe.new("mashed potatoes")
turkey = Recipe.new("turkey")
pizza = Recipe.new("pizza")

#Ingredients
eggs = Ingredient.new("eggs")
flour = Ingredient.new("flour")
butter = Ingredient.new("butter")
apples = Ingredient.new("apples")
meat = Ingredient.new("meat")

#Recipe Cards
rc_1 = RecipeCard.new(ana, apple_pie, "1/10/2018", 4)
rc_2 = RecipeCard.new(jenny, apple_pie, "5/12/2017", 5)
rc_3 = RecipeCard.new(joe, pizza, "3/4/2018", 5)
rc_4 = RecipeCard.new(mike, mashed_potatoes, "1/7/2016", 3)
rc_5 = RecipeCard.new(jenny, turkey, "12/5/2012", 4)
rc_6 = RecipeCard.new(mike, pizza, "3/2/2016", 2)
rc_7 = RecipeCard.new(jenny, mashed_potatoes, "10/18/2018", 1)
rc_8 = RecipeCard.new(jenny, pumpkin_pie, "8/2/2018", 4)

#Recipe Ingredients
ri_1 = RecipeIngredient.new(apple_pie, apples)
ri_2 = RecipeIngredient.new(pumpkin_pie, eggs)
ri_3 = RecipeIngredient.new(pizza, flour)
ri_4 = RecipeIngredient.new(mashed_potatoes, butter)
ri_5 = RecipeIngredient.new(apple_pie, flour)
ri_6 = RecipeIngredient.new(turkey, meat)

#Allergens
gluten = Allergen.new("gluten", mike, flour)
lactose = Allergen.new("lactose", joe, butter)
egg_allergy = Allergen.new("egg allergy", jenny, eggs)
fruit_allergy = Allergen.new("fruit allergy", ana, apples)
egg = Allergen.new("egg allergy", ana, eggs)

print User.all

binding.pry
