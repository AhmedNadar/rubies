# Animal
module Animal
	def likes?(food)
		acceptable_food.include?(food)
	end

	def acceptable_food
		[]
	end

	def eat(food)
		@meals ||= 0 # initialize @meal
			if likes?(food)
				@meals += 1
				true
			else
				false
			end
	end

	def full?
		false
	end
end