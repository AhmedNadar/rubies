class Panda
	def likes?(food)
		wield_food.include?(food.to_sym)
	end

	def wield_food
		[:bamboo]
	end
end

class Lion
	def likes?(food)
		wield_food.include?(food.to_sym)
	end

	def wield_food
		[:wildebeests, :zeebras]
	end
end