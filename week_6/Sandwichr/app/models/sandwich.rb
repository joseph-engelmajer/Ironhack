class Sandwich < ApplicationRecord
	has_many :sandwichingredients
	has_many :ingredients, through: "sandwichingredients"
end
