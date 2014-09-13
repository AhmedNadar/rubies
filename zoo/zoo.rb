class Panda
	def likes?(food)
		food.to_sym == :bamboo
	end
end

class Lion
	def likes?(food)
		lion_food = [:wildebeests, :zeebras]
		lion_food.include?(food.to_sym)
	end
end