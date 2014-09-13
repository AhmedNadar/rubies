class Panda
	def likes?(food)
		food.to_sym == :bamboo
	end
end

class Lion
	def likes?(food)
		food.to_sym == :wildebeests
	end
end