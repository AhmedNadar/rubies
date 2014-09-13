class Animal
	def likes?(food)
		wield_food.include?(food.to_sym)
	end

	def wield_food
		[]
	end
end

class Panda < Animal
	def wield_food
		[:bamboo]
	end
end

class Lion < Animal 
	def wield_food
		[:wildebeests, :zeebras]
	end
end