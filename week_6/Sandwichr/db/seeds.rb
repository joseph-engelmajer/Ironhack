# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meatball_sub = Sandwich.create(name: "meatball sub", bread_type: "Hogie")
turkey_sub = Sandwich.create(name: "turkey sub", bread_type: "french")
turkey_club = Sandwich.create(name: "turkey club", bread_type: "white")
bla_sub = Sandwich.create(name: "BLA", bread_type: "pumpernickle")


meatballs = Ingredient.create(name: "meatballs", calories: 150)
marinara = Ingredient.create(name: "marinara", calories: 50)
parmesan = Ingredient.create(name: "parmesan", calories: 50)
turkey = Ingredient.create(name: "turkey", calories: 50)
lettuce = Ingredient.create(name: "lettuce", calories: 50)
brie = Ingredient.create(name: "brie", calories: 200)
bacon = Ingredient.create(name: "bacon", calories: 150)
avocado = Ingredient.create(name: "avocado", calories: 100)
mustard = Ingredient.create(name: "mustard", calories: 100)
mayo = Ingredient.create(name: "mayo", calories: 200)
arugula = Ingredient.create(name: "arugula", calories: 100)
fried_chicken = Ingredient.create(name: "fried chicken", calories: 300)
tomato = Ingredient.create(name: "tomato", calories: 100)
ketchup = Ingredient.create(name: "ketchup", calories: 100)


meatball_sub.ingredients.push(meatballs)
meatball_sub.ingredients.push(marinara)
meatball_sub.ingredients.push(parmesan)

turkey_sub.ingredients.push(turkey)
turkey_sub.ingredients.push(lettuce)
turkey_sub.ingredients.push(avocado)

turkey_club.ingredients.push(turkey)
turkey_club.ingredients.push(bacon)
turkey_club.ingredients.push(brie)
turkey_club.ingredients.push(lettuce)
turkey_club.ingredients.push(avocado)

bla_sub.ingredients.push(bacon)
bla_sub.ingredients.push(lettuce)
bla_sub.ingredients.push(avocado)
